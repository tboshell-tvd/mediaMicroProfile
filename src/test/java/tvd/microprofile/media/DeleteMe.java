package tvd.microprofile.media;

import org.junit.Test;

public class DeleteMe {

	@Test
	public void stringRep() {
		String s = "file:${user.home}/.mediaresource/config.json";
		String usr = "C:\\Users\\BTH";

		String format = s.format("%s", usr);

		System.out.println(s.replace("${user.home}", usr));
	}

}
