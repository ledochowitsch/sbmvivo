function [dO, dP] = default_settings_and_params
%[dO, dP] = sbm_default_settings_and_params
dO = struct(...
     'Nparticles',                  102400 ...
    ,'Nparticles_prerun',           [] ...
    ,'min_iter_paramest',           400 ...
    ,'verbose',                     3 ...    
    ,'filtersmoother_window',       0.5 ... %sec
    ,'shotnoise',                   false ...
    ,'darknoise',                   true ...            
    ,'randperm_resample',           false ...
    ,'resamplemode',                'systematic' ...
    ,'usegpu',                      true ...        
    ,'singleprecision',             true ...
    ,'doubleprecisionweights',      true ...
    ,'parameterestimation',         'tm' ... %valid choices: tm, none
    ,'locked_params',               {{}}  ...
    ,'substepsize',                 0.01  ... %s    
    ,'gfitst',                      true  ...
    ,'gfitst_maxfr',                7   ...
    ,'darkoffsetcorrected',         true ...
    ,'darknoisemeasured',           false ...
    ,'min_firing_rate',             0.005 ...
    ,'min_prewin',                  2.5   ... %seconds. window over which we simulate randomly to get at the prior stationary distribution for the state space model
    ,'n_profile_iterations',        1     ...
    ,'profile_firing_rate',         true ...    
    ,'profile_zeta',                false ...
    ,'tm_mintemp',                  10    ...
    ,'multiroundpf',                true  ...
    ,'resample_to_proposal',        true ...
    ,'maxpoints_paramest',          1.25e4   ...
    ,'maxjitter_ms',                200 ...
    ,'n_newton_iterations',         3 ...
    ,'zetafac',                     1 ...
    ,'usefiguregraphics',           true ...
    );

dP = struct(...
    'sigma_r',                  0.01 ...    
    ,'gamma_kt_FR',             [1.3035    0.1221] ... %gamma prior over firing rates    
    );