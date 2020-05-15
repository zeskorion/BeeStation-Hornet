/obj/item/projectile/bullet/neurotoxin
	name = "neurotoxin spit"
	icon_state = "neurotoxin"
	damage = 5
	damage_type = TOX

/obj/item/projectile/bullet/neurotoxin/on_hit(atom/target, blocked = FALSE)
	if(isalien(target))
		paralyze = 0
		nodamage = TRUE
	if(iscarbon(target))
		var/mob/living/carbon/human/H = target
		var/def_check = H.getarmor("bio")
		if(def_check < 100)
			H.Stun(100 - def_check)
	return ..()
