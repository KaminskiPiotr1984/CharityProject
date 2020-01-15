package pl.coderslab.charity.aplication.services.impl;


import org.modelmapper.ModelMapper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.charity.aplication.domain.entities.Role;
import pl.coderslab.charity.aplication.domain.entities.User;
import pl.coderslab.charity.aplication.domain.repositories.RoleRepository;
import pl.coderslab.charity.aplication.domain.repositories.UserRepository;
import pl.coderslab.charity.aplication.dtos.RegistrationDataDTO;
import pl.coderslab.charity.aplication.services.RegistrationService;

@Service
@Transactional
public class DefaultRegistrationService implements RegistrationService {

    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public DefaultRegistrationService(PasswordEncoder passwordEncoder, UserRepository userRepository, RoleRepository roleRepository) {
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    @Override
    public void register(RegistrationDataDTO registrationData) {
        ModelMapper mapper = new ModelMapper();
        User user = mapper.map(registrationData, User.class);
//        user.setActive(Boolean.TRUE);
        String encodedPassword = passwordEncoder.encode(registrationData.getPassword());
        user.setPassword(encodedPassword);
        Role roleUser = roleRepository.getByName("ROLE_USER");
        user.getRoles().add(roleUser);
        userRepository.save(user);

    }
}