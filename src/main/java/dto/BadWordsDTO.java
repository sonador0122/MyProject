package dto;

public class BadWordsDTO {
	 int num;
	 String word;
	
	public BadWordsDTO() {
		super();
	}
	//insert��
	public BadWordsDTO(String word){
		this.word=word;
	}
	//select��
	public BadWordsDTO(int num, String word) {
		super();
		this.num = num;
		this.word = word;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	@Override
	public String toString() {
		return "BadWordsDTO [num=" + num + ", word=" + word + "]";
	}
	
	
}
