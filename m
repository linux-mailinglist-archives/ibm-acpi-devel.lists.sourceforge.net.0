Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 208AA828562
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Jan 2024 12:47:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rNAYw-0007ZP-RR;
	Tue, 09 Jan 2024 11:46:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pavel@ucw.cz>) id 1rNAYu-0007ZE-P1
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Jan 2024 11:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jxKjPdKA0cEwZTm0Buk8HkHBJ6hCFNagp4tne2EQE7Y=; b=VkpL3jItQPmwWh0VUWxyclnUkn
 nMbbSVRnrah/OxL0+IKbSWY7zeoXfpxYcRUCWQwT5EdpUaqNf4EytVapKbrS8hScEm0dJPtwyIwSS
 k3EofNTC/ZtqG4rFS0qnM87oxfG05EMcWjixzkUz2pk0/7Z9y5ZGy5eFUY4tQmVSMxzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jxKjPdKA0cEwZTm0Buk8HkHBJ6hCFNagp4tne2EQE7Y=; b=S2RHWWZM1Er3/4Yz91bqVMCqxz
 3yNeOJSAjw4lF9BCwre5SqpIwk282Bk4PD/0CQ7fTZDyBV50PuI12o48o+A3srUoSc4lQH0E58cVq
 z0ZI1AgHdiEHfNMknDvH3PTVRUACYSsKldvqICsrAzHdnvxG/e7CGZvVLCILkLjobw6o=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rNAYo-0006tb-IE for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 09 Jan 2024 11:46:28 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 3841D1C0050; Tue,  9 Jan 2024 12:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
 t=1704800764;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jxKjPdKA0cEwZTm0Buk8HkHBJ6hCFNagp4tne2EQE7Y=;
 b=mfYU0U1b7uGQQoExKH6W9VFQLMNptLoosPF+okjDjAg+org+jb13+HjMJHKTAWca8Ri6/N
 Pu4267KRnOjrKZzbPFZ8rvMVAwkVctYgBCqJKFzwqEj7gwmrb4o12Og9dKh0ttx3zLL1f7
 8T8pVr5ynFrkirQax9+n90X92SHoKqs=
Date: Tue, 9 Jan 2024 12:46:03 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <ZZ0x+wlRGxwPOArK@duo.ucw.cz>
References: <20231226002255.5730-1-sashal@kernel.org>
 <20231226002255.5730-12-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231226002255.5730-12-sashal@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi! > [ Upstream commit
 66e92e23a72761f5b53f970aeb1badc5fd92fc74
 ] > > Some ThinkPad systems ECFW use non-standard addresses for fan control
 > and reporting. This patch adds support for such ECFW so that [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rNAYo-0006tb-IE
Subject: Re: [ibm-acpi-devel] [PATCH AUTOSEL 6.1 12/24] platform/x86:
 thinkpad_acpi: fix for incorrect fan reporting on some ThinkPad systems
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, hmh@hmh.eng.br,
 Vishnu Sankar <vishnuocv@gmail.com>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============3677029069473828389=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


--===============3677029069473828389==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RqAJcv4WMeLX7X9R"
Content-Disposition: inline


--RqAJcv4WMeLX7X9R
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> [ Upstream commit 66e92e23a72761f5b53f970aeb1badc5fd92fc74 ]
>=20
> Some ThinkPad systems ECFW use non-standard addresses for fan control
> and reporting. This patch adds support for such ECFW so that it can report
> the correct fan values.
> Tested on Thinkpads L13 Yoga Gen 2 and X13 Yoga Gen 2.

This is just a new feature, and is > 200 lines. We should not have
this in stable.

BR,
								Pavel





> Suggested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> Reviewed-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
> Link: https://lore.kernel.org/r/20231214134702.166464-1-vishnuocv@gmail.c=
om
> Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 98 ++++++++++++++++++++++++----
>  1 file changed, 85 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/=
thinkpad_acpi.c
> index 05a55bc31c796..6edd2e294750e 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8149,8 +8149,19 @@ static struct ibm_struct volume_driver_data =3D {
>   * 	TPACPI_FAN_WR_TPEC is also available and should be used to
>   * 	command the fan.  The X31/X40/X41 seems to have 8 fan levels,
>   * 	but the ACPI tables just mention level 7.
> + *
> + * TPACPI_FAN_RD_TPEC_NS:
> + *	This mode is used for a few ThinkPads (L13 Yoga Gen2, X13 Yoga Gen2 e=
tc.)
> + *	that are using non-standard EC locations for reporting fan speeds.
> + *	Currently these platforms only provide fan rpm reporting.
> + *
>   */
> =20
> +#define FAN_RPM_CAL_CONST 491520	/* FAN RPM calculation offset for some =
non-standard ECFW */
> +
> +#define FAN_NS_CTRL_STATUS	BIT(2)		/* Bit which determines control is en=
abled or not */
> +#define FAN_NS_CTRL		BIT(4)		/* Bit which determines control is by host =
or EC */
> +
>  enum {					/* Fan control constants */
>  	fan_status_offset =3D 0x2f,	/* EC register 0x2f */
>  	fan_rpm_offset =3D 0x84,		/* EC register 0x84: LSB, 0x85 MSB (RPM)
> @@ -8158,6 +8169,11 @@ enum {					/* Fan control constants */
>  	fan_select_offset =3D 0x31,	/* EC register 0x31 (Firmware 7M)
>  					   bit 0 selects which fan is active */
> =20
> +	fan_status_offset_ns =3D 0x93,	/* Special status/control offset for non=
-standard EC Fan1 */
> +	fan2_status_offset_ns =3D 0x96,	/* Special status/control offset for no=
n-standard EC Fan2 */
> +	fan_rpm_status_ns =3D 0x95,	/* Special offset for Fan1 RPM status for n=
on-standard EC */
> +	fan2_rpm_status_ns =3D 0x98,	/* Special offset for Fan2 RPM status for =
non-standard EC */
> +
>  	TP_EC_FAN_FULLSPEED =3D 0x40,	/* EC fan mode: full speed */
>  	TP_EC_FAN_AUTO	    =3D 0x80,	/* EC fan mode: auto fan control */
> =20
> @@ -8168,6 +8184,7 @@ enum fan_status_access_mode {
>  	TPACPI_FAN_NONE =3D 0,		/* No fan status or control */
>  	TPACPI_FAN_RD_ACPI_GFAN,	/* Use ACPI GFAN */
>  	TPACPI_FAN_RD_TPEC,		/* Use ACPI EC regs 0x2f, 0x84-0x85 */
> +	TPACPI_FAN_RD_TPEC_NS,		/* Use non-standard ACPI EC regs (eg: L13 Yoga =
gen2 etc.) */
>  };
> =20
>  enum fan_control_access_mode {
> @@ -8195,6 +8212,8 @@ static u8 fan_control_desired_level;
>  static u8 fan_control_resume_level;
>  static int fan_watchdog_maxinterval;
> =20
> +static bool fan_with_ns_addr;
> +
>  static struct mutex fan_mutex;
> =20
>  static void fan_watchdog_fire(struct work_struct *ignored);
> @@ -8325,6 +8344,15 @@ static int fan_get_status(u8 *status)
>  		}
> =20
>  		break;
> +	case TPACPI_FAN_RD_TPEC_NS:
> +		/* Default mode is AUTO which means controlled by EC */
> +		if (!acpi_ec_read(fan_status_offset_ns, &s))
> +			return -EIO;
> +
> +		if (status)
> +			*status =3D s;
> +
> +		break;
> =20
>  	default:
>  		return -ENXIO;
> @@ -8341,7 +8369,8 @@ static int fan_get_status_safe(u8 *status)
>  	if (mutex_lock_killable(&fan_mutex))
>  		return -ERESTARTSYS;
>  	rc =3D fan_get_status(&s);
> -	if (!rc)
> +	/* NS EC doesn't have register with level settings */
> +	if (!rc && !fan_with_ns_addr)
>  		fan_update_desired_level(s);
>  	mutex_unlock(&fan_mutex);
> =20
> @@ -8368,7 +8397,13 @@ static int fan_get_speed(unsigned int *speed)
> =20
>  		if (likely(speed))
>  			*speed =3D (hi << 8) | lo;
> +		break;
> +	case TPACPI_FAN_RD_TPEC_NS:
> +		if (!acpi_ec_read(fan_rpm_status_ns, &lo))
> +			return -EIO;
> =20
> +		if (speed)
> +			*speed =3D lo ? FAN_RPM_CAL_CONST / lo : 0;
>  		break;
> =20
>  	default:
> @@ -8380,7 +8415,7 @@ static int fan_get_speed(unsigned int *speed)
> =20
>  static int fan2_get_speed(unsigned int *speed)
>  {
> -	u8 hi, lo;
> +	u8 hi, lo, status;
>  	bool rc;
> =20
>  	switch (fan_status_access_mode) {
> @@ -8396,7 +8431,21 @@ static int fan2_get_speed(unsigned int *speed)
> =20
>  		if (likely(speed))
>  			*speed =3D (hi << 8) | lo;
> +		break;
> =20
> +	case TPACPI_FAN_RD_TPEC_NS:
> +		rc =3D !acpi_ec_read(fan2_status_offset_ns, &status);
> +		if (rc)
> +			return -EIO;
> +		if (!(status & FAN_NS_CTRL_STATUS)) {
> +			pr_info("secondary fan control not supported\n");
> +			return -EIO;
> +		}
> +		rc =3D !acpi_ec_read(fan2_rpm_status_ns, &lo);
> +		if (rc)
> +			return -EIO;
> +		if (speed)
> +			*speed =3D lo ? FAN_RPM_CAL_CONST / lo : 0;
>  		break;
> =20
>  	default:
> @@ -8899,6 +8948,7 @@ static const struct attribute_group fan_driver_attr=
_group =3D {
>  #define TPACPI_FAN_2FAN		0x0002		/* EC 0x31 bit 0 selects fan2 */
>  #define TPACPI_FAN_2CTL		0x0004		/* selects fan2 control */
>  #define TPACPI_FAN_NOFAN	0x0008		/* no fan available */
> +#define TPACPI_FAN_NS		0x0010		/* For EC with non-Standard register addr=
esses */
> =20
>  static const struct tpacpi_quirk fan_quirk_table[] __initconst =3D {
>  	TPACPI_QEC_IBM('1', 'Y', TPACPI_FAN_Q1),
> @@ -8917,6 +8967,8 @@ static const struct tpacpi_quirk fan_quirk_table[] =
__initconst =3D {
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd =
gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v =
(1st gen) */
>  	TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* T15g (2nd gen) */
> +	TPACPI_Q_LNV3('R', '1', 'F', TPACPI_FAN_NS),	/* L13 Yoga Gen 2 */
> +	TPACPI_Q_LNV3('N', '2', 'U', TPACPI_FAN_NS),	/* X13 Yoga Gen 2*/
>  	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) =
*/
>  };
> =20
> @@ -8951,18 +9003,27 @@ static int __init fan_init(struct ibm_init_struct=
 *iibm)
>  		return -ENODEV;
>  	}
> =20
> +	if (quirks & TPACPI_FAN_NS) {
> +		pr_info("ECFW with non-standard fan reg control found\n");
> +		fan_with_ns_addr =3D 1;
> +		/* Fan ctrl support from host is undefined for now */
> +		tp_features.fan_ctrl_status_undef =3D 1;
> +	}
> +
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode =3D TPACPI_FAN_RD_ACPI_GFAN;
>  	} else {
>  		/* all other ThinkPads: note that even old-style
>  		 * ThinkPad ECs supports the fan control register */
> -		if (likely(acpi_ec_read(fan_status_offset,
> -					&fan_control_initial_status))) {
> +		if (fan_with_ns_addr ||
> +		    likely(acpi_ec_read(fan_status_offset, &fan_control_initial_status=
))) {
>  			int res;
>  			unsigned int speed;
> =20
> -			fan_status_access_mode =3D TPACPI_FAN_RD_TPEC;
> +			fan_status_access_mode =3D fan_with_ns_addr ?
> +				TPACPI_FAN_RD_TPEC_NS : TPACPI_FAN_RD_TPEC;
> +
>  			if (quirks & TPACPI_FAN_Q1)
>  				fan_quirk1_setup();
>  			/* Try and probe the 2nd fan */
> @@ -8971,7 +9032,8 @@ static int __init fan_init(struct ibm_init_struct *=
iibm)
>  			if (res >=3D 0 && speed !=3D FAN_NOT_PRESENT) {
>  				/* It responded - so let's assume it's there */
>  				tp_features.second_fan =3D 1;
> -				tp_features.second_fan_ctl =3D 1;
> +				/* fan control not currently available for ns ECFW */
> +				tp_features.second_fan_ctl =3D !fan_with_ns_addr;
>  				pr_info("secondary fan control detected & enabled\n");
>  			} else {
>  				/* Fan not auto-detected */
> @@ -9146,6 +9208,7 @@ static int fan_read(struct seq_file *m)
>  			       str_enabled_disabled(status), status);
>  		break;
> =20
> +	case TPACPI_FAN_RD_TPEC_NS:
>  	case TPACPI_FAN_RD_TPEC:
>  		/* all except 570, 600e/x, 770e, 770x */
>  		rc =3D fan_get_status_safe(&status);
> @@ -9160,13 +9223,22 @@ static int fan_read(struct seq_file *m)
> =20
>  		seq_printf(m, "speed:\t\t%d\n", speed);
> =20
> -		if (status & TP_EC_FAN_FULLSPEED)
> -			/* Disengaged mode takes precedence */
> -			seq_printf(m, "level:\t\tdisengaged\n");
> -		else if (status & TP_EC_FAN_AUTO)
> -			seq_printf(m, "level:\t\tauto\n");
> -		else
> -			seq_printf(m, "level:\t\t%d\n", status);
> +		if (fan_status_access_mode =3D=3D TPACPI_FAN_RD_TPEC_NS) {
> +			/*
> +			 * No full speed bit in NS EC
> +			 * EC Auto mode is set by default.
> +			 * No other levels settings available
> +			 */
> +			seq_printf(m, "level:\t\t%s\n", status & FAN_NS_CTRL ? "unknown" : "a=
uto");
> +		} else {
> +			if (status & TP_EC_FAN_FULLSPEED)
> +				/* Disengaged mode takes precedence */
> +				seq_printf(m, "level:\t\tdisengaged\n");
> +			else if (status & TP_EC_FAN_AUTO)
> +				seq_printf(m, "level:\t\tauto\n");
> +			else
> +				seq_printf(m, "level:\t\t%d\n", status);
> +		}
>  		break;
> =20
>  	case TPACPI_FAN_NONE:

--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--RqAJcv4WMeLX7X9R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCZZ0x+wAKCRAw5/Bqldv6
8qqZAJ9yLVMfcZHaTUOxiqyLXH8+CSa8tQCfZbamj9avaPyizT5U11bthYaCPDQ=
=3p+4
-----END PGP SIGNATURE-----

--RqAJcv4WMeLX7X9R--


--===============3677029069473828389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3677029069473828389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3677029069473828389==--

