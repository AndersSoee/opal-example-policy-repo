permit(
    principal is Lunar::OrganisationParty,
    action in [
        Lunar::Action::"viewAccount"
	],
    resource is Lunar::Account
) when {
  resource has organisation && principal has organisation &&
  resource.organisation == principal.organisation &&
  principal.roles.contains( "coworker")
};

permit(
    principal is Lunar::OrganisationParty,
    action in [
        Lunar::Action::"transferMoney",
        Lunar::Action::"viewTransactions"
	],
    resource is Lunar::Account
) when {
  resource has organisation && principal has organisation &&
  resource.organisation == principal.organisation &&
  principal.roles.contains( "owner")
};