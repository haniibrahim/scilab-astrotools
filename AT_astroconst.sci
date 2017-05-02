function AT_astroconst()
    //
    // Constants for astronomic and physical calculations
    //
    // CALLING SEQUENCES
    // AT_astroconst()
    //
    // PARAMETERS
    // no parameters
    //
    // DESCRIPTION
    // Calling "AT_astroconst" will provide astronomic and physical 
    // constants as structs, e.g. mass off the earth as "earth.mass"
    //
    // [body].mass      Mass in kg
    // [body].vol       Volume in m^3
    // [body].r         Mean radius in m
    // [body].r_eq      Equatorial radius in m
    // [body].r_pol     Polar radius in m
    // [body].g         Mean gravity in m/s^2
    // [body].p         Surface pressure ("sea level") in hPa
    // [body].rho       Mean density in kg/m^3
    // [body].area      Surface area in m^2
    // [body].area_lnd  Surface area land in m^2
    // [body].area_h2o  Surface area water in m^2
    // [body].aph       Aphelion in m
    // [body].per       Pherihelion in m
    // [body].xxx       more ...
    //
    // Not all constants are available for all bodies.
    //
    // EXAMPLES
    // AT_astroconst()
    // earth.mass // mass of the earth in kg
    // earth.r    // mean radius of the earth in m
    // moon.g     // mean gravity of the moon in m/s^2
    //

    L0 = "";
    L0 = who("local");

    // Check if AT_astroconst() was already loaded. If so it returns immediately
    if exists("AT_astroconst_loaded") then disp("AT_astroconst() already loaded");  return; end
    
    AT_astroconst_loaded = 1;
    
    // sun constants
    sun = struct (..
    "mass", 1.9884e30, ..   // Mass in kg
    "mass_diff", 2e26, ..   // fluctuating mass in kg => sun.mass +/- sun.mass_diff
    "vol", 1.41e27, ..      // Volume im m^3
    "r", 696342e3, ..       // Mean radius in m
    "g", 274, ..            // Mean gravity on surface in m/s^2
    "rho", 1408, ..         // Mean density in kg/m^3
    "", 0 ..
    );

    // Earth constants
    earth = struct( .. 
    "mass", 5.97237e24, ..  // Mass in kg
    "vol", 1.08321e15, ..   // Volume in m^3
    "r", 6.371e6, ..        // Mean radius in m
    "r_eq", 6.3781e6, ..    // Equatorial radius in m
    "r_pol", 6.3568e6, ..   // Polar radius in m
    "g", 9.8066, ..         // Mean gravity in m/s^2
    "p", 1013.25, ..        // Surface pressure ("sea level") in hPa
    "rho", 5514, ..         // Mean density in kg/m^3
    "area", 5.10072e11, ..  // Surface area in m^2
    "area_lnd",1.48940e11,.. // Surface area land in m^2
    "area_h2o",3.61132e11,.. // Surface area water in m^2
    "aph", 1.52100e11, ..    // Aphelion in m
    "per", 1.47095e11, ..    // Pherihelion in m 
    "dist", 1.496e11, ..     // Mean distance from the sun in m
    "", 0 .. 
    );
    // Moon constants
    moon = struct( .. 
    "mass",7.342e22, ..      // Mass in kg
    "vol", 2.1958e19, ..     // Volume in m^3
    "r", 1738e3 , ..         // Mean radius in m 
    "r_eq", 1738.1e3, ..     // Equatorial radius in m
    "r_pol", 1736.0e3, ..    // Polar radius in m
    "g", 1.62 , ..           // Mean gravity in m/s^2
    "p", 0.3e-11 , ..        // Surface pressure ("sea level") in hPa
    "p_d", 1e-9 , ..         // Surface pressure at daytime in hPa
    "p_n", 1e-12 , ..        // Surface pressure at night in hPa
    "rho", 3344, ..          // Mean density in kg/m^3
    "area", 37932330e6, ..   // Surface area in m^2
    "dist", 384.4e6, ..      // Distance (Semi-major axis)
    "aph", 405.5e6, ..       // Aphelion in m
    "per", 363.3e6, ..       // Pherihelion in m 
    "period_synod", 2551442.9, .. // Synodic period in s
    "period_orbit", 2360587.1, .. // Orbital period in s
    "", 0 .. 
    );
    //General constants
    gen = struct( ..
    "G", 6.67408D-11, ..    // Gravity constant in m^3/(kg * s^2) or in Nm^2/kg^2
    "c", 299792458, ..      // lightspeed in vacuum in m/s
    "AE", earth.dist, ..    // Astronomic unit
    "R", 8.3144598, ..      // Universal gas constant in J/(mol*K)
    "R_air", 287.0578987, ..// Special gas constant for dry air in J/(kg*K)
    "", 0 ..
    );
    
    L0 = setdiff(who("local"), L0)
    execstr("["+strcat(L0,",")+"] = resume("+strcat(L0,",")+")")    
endfunction
