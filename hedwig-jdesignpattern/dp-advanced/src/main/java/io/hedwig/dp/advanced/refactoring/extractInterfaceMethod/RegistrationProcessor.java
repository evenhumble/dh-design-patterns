package io.hedwig.dp.advanced.refactoring.extractInterfaceMethod;

/**
 * Created by patrick on 15/10/28.
 */
public class RegistrationProcessor {
    public double processRegistration(ClassRegistration registration){
        registration.create();
        return registration.getTotal();
    }
}
