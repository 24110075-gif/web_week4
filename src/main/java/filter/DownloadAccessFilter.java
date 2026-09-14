package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet Filter implementation class DownloadAccessFilter
 */
@WebFilter("*.jsp")
public class DownloadAccessFilter extends HttpFilter implements Filter {
	private static final long serialVersionUID = 1L;

    public DownloadAccessFilter() {
        super();
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		String uri = httpRequest.getRequestURI();

		// Cho phép truy cập index.jsp và register.jsp công khai
		if (uri.endsWith("index.jsp") || uri.endsWith("register.jsp")) {
			chain.doFilter(request, response);
			return;
		}

		// Chỉ chặn các file download trong /html/ nếu chưa xác thực
		HttpSession session = httpRequest.getSession(false);
		Boolean verified = (session != null) ? (Boolean) session.getAttribute("verifiedAccess") : null;
		
		if (verified == null || !verified) {
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/");
			return;
		}

		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
