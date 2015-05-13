package com.fj.common.init;

import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.fj.common.utils.CodeCreator;
import com.fj.common.utils.CodeCreator.Type;
import com.fj.common.utils.DateUtils;
import com.fj.common.utils.StringUtils;
import com.fj.modules.house.entity.Contract;
import com.fj.modules.house.entity.Favorite;
import com.fj.modules.house.entity.House;
import com.fj.modules.house.entity.Schedule;
import com.fj.modules.house.entity.ScheduleItem;
import com.fj.modules.house.entity.SeeHouse;
import com.fj.modules.house.entity.SmallArea;
import com.fj.modules.house.entity.Subway;
import com.fj.modules.house.entity.Trust;
import com.fj.modules.sys.entity.Area;
import com.fj.modules.sys.entity.Menu;
import com.fj.modules.sys.entity.Office;
import com.fj.modules.sys.entity.Role;
import com.fj.modules.sys.entity.User;

/**
 * 代码自动生成初始化
 * @author Administrator
 *
 */
@Component
@Lazy(false)
public class AppCodeInit implements InitializingBean{

    private Log logger = LogFactory.getLog(this.getClass().getName());
	private static final String SmallArea = SmallArea.class.getSimpleName();
	private static final String House = House.class.getSimpleName();
	private static final String Contract = Contract.class.getSimpleName();
	private static final String Favorite = Favorite.class.getSimpleName();
	private static final String Schedule = Schedule.class.getSimpleName();
	private static final String ScheduleItem = ScheduleItem.class.getSimpleName();
	private static final String SeeHouse = SeeHouse.class.getSimpleName();
	private static final String Subway = Subway.class.getSimpleName();
	private static final String Trust = Trust.class.getSimpleName();
	private static final String Area = Area.class.getSimpleName();
	private static final String Menu = Menu.class.getSimpleName();
	private static final String Office = Office.class.getSimpleName();
	private static final String Role = Role.class.getSimpleName();
	private static final String User = User.class.getSimpleName();
    
    private JdbcTemplate jt = null;

    @Autowired
    public void setDataSource(DataSource ds) {
        this.jt = new JdbcTemplate(ds);
    }

    private void init() {
        CodeCreator.regist(SmallArea, "000000", Type.NO_DATE);
        CodeCreator.regist(House, "000000", Type.NO_DATE);
        CodeCreator.regist(Contract, "000000", Type.NO_DATE);
        CodeCreator.regist(Favorite, "000000", Type.NO_DATE);
        CodeCreator.regist(Schedule, "000000", Type.NO_DATE);
        CodeCreator.regist(ScheduleItem, "000000", Type.NO_DATE);
        CodeCreator.regist(SeeHouse, "000000", Type.NO_DATE);
        CodeCreator.regist(Subway, "000000", Type.NO_DATE);
        CodeCreator.regist(Trust, "000000", Type.NO_DATE);
        CodeCreator.regist(Area, "000000", Type.NO_DATE);
        CodeCreator.regist(Menu, "000000", Type.NO_DATE);
        CodeCreator.regist(Office, "000000", Type.NO_DATE);
        CodeCreator.regist(Role, "000000", Type.NO_DATE);
        CodeCreator.regist(User, "000000", Type.NO_DATE);
       
        String year = DateUtils.getYear().substring(2);
        String ymd=DateUtils.getYyMMdd();
        logger.info("year:"+year);
        CodeCreator.get(SmallArea).add(new Date(), getLastSmallAreaCode(), "XQ"+year);
        CodeCreator.get(House).add(new Date(), getLastHouseCode(), "FY"+year);
        CodeCreator.get(Contract).add(new Date(), getLastContractCode(), "HT"+ymd);
        CodeCreator.get(Favorite).add(new Date(), getLastFavoriteCode(), "SC"+ymd);
        CodeCreator.get(Schedule).add(new Date(), getLastScheduleCode(), "RC"+ymd);
        CodeCreator.get(ScheduleItem).add(new Date(), getLastScheduleItemCode(), "RI"+ymd);
        CodeCreator.get(SeeHouse).add(new Date(), getLastSeeHouseCode(), "KF"+ymd);
        CodeCreator.get(Subway).add(new Date(), getLastSubwayCode(), "DT"+year);
        CodeCreator.get(Trust).add(new Date(), getLastTrustCode(), "WT"+ymd);
        CodeCreator.get(Area).add(new Date(), getLastAreaCode(), "QY"+year);
        CodeCreator.get(Menu).add(new Date(), getLastMenuCode(), "CD"+year);
        CodeCreator.get(Office).add(new Date(), getLastOfficeCode(), "ZZ"+year);
        CodeCreator.get(Role).add(new Date(), getLastRoleCode(), "JS"+year);
        CodeCreator.get(User).add(new Date(), getLastUserCode(), "YH"+year);
    }

	private String getLastRoleCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from sys_ROLE where id like 'JS%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastRoleCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastOfficeCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from sys_OFFICE where id like 'ZZ%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastOfficeCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastMenuCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from sys_MENU where id like 'CD%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastMenuCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastUserCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from sys_USER where id like 'YH%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastUserCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastAreaCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from sys_area where id like 'QY%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastAreaCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastTrustCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_trust where id like 'WT%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastTrustCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastSubwayCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_subway where id like 'DT%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastSubwayCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastSeeHouseCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_seehouse where id like 'KF%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastSeeHouseCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastScheduleItemCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_ScheduleItem where id like 'RI%' order by id desc)  where rownum=1 ", String.class);
		logger.info("getLastScheduleItemCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastScheduleCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_Schedule where id like 'RC%' order by id desc)  where rownum=1", String.class);
		logger.info("getLastScheduleCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastFavoriteCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_Favorite where id like 'SC%' order by id desc)  where rownum=1", String.class);
		logger.info("getLastFavoriteCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	private String getLastContractCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_Contract where id like 'HT%' order by id desc)  where rownum=1", String.class);
		logger.info("getLastContractCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	public String getLastHouseCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_HOUSE where id like 'FY%' order by id desc)  where rownum=1", String.class);
		logger.info("getLastHouseCode:"+codes);
		if(codes.isEmpty()){
			return null;
		}
		return StringUtils.trim(codes.get(0));
	}

	private String getLastSmallAreaCode() {
		List<String> codes = this.jt.queryForList("select * from (select  id from shop_SmallArea where id like 'XQ%' order by id desc)  where rownum=1", String.class);
		logger.info("getLastSmallAreaCode:"+codes);
		if(codes.isEmpty()){return null;}return StringUtils.trim(codes.get(0));
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		this.init();
	}
}
