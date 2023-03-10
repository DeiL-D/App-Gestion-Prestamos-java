package ejemploWebObj.aplicacion.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PortatilRepository extends CrudRepository<Portatil,Integer>  {

}
