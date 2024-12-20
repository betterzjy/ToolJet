import React from 'react';
import { Link } from 'react-router-dom';
import LogoLightMode from '@assets/images/Logomark_guoxin.svg';
import LogoDarkMode from '@assets/images/Logomark_guoxin.svg';
import { redirectToDashboard } from '@/_helpers/routes';

function OnboardingNavbar({ darkMode }) {
  const Logo = darkMode ? LogoDarkMode : LogoLightMode;

  return (
    <div className={`onboarding-navbar container-xl`}>
      <Link onClick={() => redirectToDashboard()}>
        <Logo height="38" width="180" alt="tooljet logo" data-cy="page-logo" />
      </Link>
    </div>
  );
}

export default OnboardingNavbar;
