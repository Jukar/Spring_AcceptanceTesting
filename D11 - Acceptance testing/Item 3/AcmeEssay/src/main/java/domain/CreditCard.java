package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.CreditCardNumber;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.SafeHtml;

@Embeddable
@Access(AccessType.PROPERTY)
public class CreditCard {
	// Constructors -----------------------------------------------------------

	public CreditCard() {
		super();
	}
	
	// Attributes -------------------------------------------------------------
	
	private String holderName;
	private String brandName;
	private String number;
	private int expirationMonth;
	private int expirationYear;
	private int cvvCode;
	
	
	// Getters and Setters --------------------------------------------------
	
	@NotBlank
	public String getHolderName() {
		return holderName;
	}
	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}
	
	@NotBlank
	public String getBrandName() {
		return brandName;
	}	
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	@NotBlank
	@Pattern(regexp="^\\d{16}$")
	@CreditCardNumber
	public String getNumber() {
		return number;
	}	
	public void setNumber(String number) {
		this.number = number;
	}
	
	@Range(min = 1, max = 12)
	public int getExpirationMonth() {
		return expirationMonth;
	}	
	public void setExpirationMonth(int expirationMonth) {
		this.expirationMonth = expirationMonth;
	}
	
	@Range(min = 2014, max = 3000)
	public int getExpirationYear() {
		return expirationYear;
	}
	public void setExpirationYear(int espirationYear) {
		this.expirationYear = espirationYear;
	}
	
	@Range(min = 100, max = 999)
	public int getCvvCode() {
		return cvvCode;
	}	
	public void setCvvCode(int cvvCode) {
		this.cvvCode = cvvCode;
	}
	
	// Relationships ----------------------------------------------------------
}
