package auctionplus.service.Impl;

import auctionplus.dao.RoleDao;
import auctionplus.dao.Impl.RoleDaoImpl;
import auctionplus.model.RoleModel;
import auctionplus.service.RoleService;

public class RoleServiceImpl implements RoleService {
	RoleDao roleDao = new RoleDaoImpl();

	@Override
	public RoleModel get(int id) {
		return roleDao.get(id);
	}

}
