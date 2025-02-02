package util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Regex {
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			Pattern.CASE_INSENSITIVE);

	public static boolean validateEmail(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.matches();
	}
	
	public static final Pattern patternPhone =Pattern.compile("\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}");
	
	public static boolean validatePhone(String phone) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(phone);
		return matcher.matches();
	}
}
