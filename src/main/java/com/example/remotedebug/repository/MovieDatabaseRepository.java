package com.example.remotedebug.repository;

import com.example.remotedebug.entity.MovieEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MovieDatabaseRepository extends CrudRepository<MovieEntity,Integer> {
    Optional<List<MovieEntity>> findByActorName(String actor);

    Optional<List<MovieEntity>> findByDirectorName(String directorName);
}
