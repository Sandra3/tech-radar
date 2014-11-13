package com.ai.techradar.database.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Technology {

	private Long id;

	private String name;

	private int usageCount;

	private String url;

	private String description;

	private String detailUrl;

	private boolean customerStrategic;

	private List<Z> zs;

	public Technology() {
		// this form used by Hibernate
	}

	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	@Column(name="TECHNOLOGY_ID")
	public Long getId() {
		return id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public int getUsageCount() {
		return usageCount;
	}

	public void setUsageCount(final int usageCount) {
		this.usageCount = usageCount;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(final String url) {
		this.url = url;
	}

	@Column(name = "description", length = 4000)
	public String getDescription() {
		return description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}

	public String getDetailUrl() {
		return detailUrl;
	}

	public void setDetailUrl(final String detailUrl) {
		this.detailUrl = detailUrl;
	}

	public boolean isCustomerStrategic() {
		return customerStrategic;
	}

	public void setCustomerStrategic(final boolean customerStrategic) {
		this.customerStrategic = customerStrategic;
	}

	@OneToMany(mappedBy="technology", cascade=CascadeType.ALL)
	public List<Z> getZs() {
		return zs;
	}

	public void setZs(final List<Z> zs) {
		this.zs = zs;
	}

}
