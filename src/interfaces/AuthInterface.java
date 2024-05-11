package interfaces;

import entidades.User;

public interface AuthInterface {
	public User verify(String email, String password);
	public int createUser(User user);
}
