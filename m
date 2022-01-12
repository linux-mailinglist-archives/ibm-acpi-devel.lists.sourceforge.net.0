Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D18648C3C0
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 12 Jan 2022 13:09:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n7cQG-0002UB-1W; Wed, 12 Jan 2022 12:08:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <a-kobel@a-kobel.de>) id 1n7cQE-0002U4-VO
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 12 Jan 2022 12:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNu+x2G5K8bJGHW7QYdbUNBed8J7VEq6Z1LAtRJQDYY=; b=aP2fTWRTv+24OgJXulYbUyz9F
 dgYg1xdneE7pr6uL1Ej2YBweM+2pmwVGbBRMKcCAI7UQYXHWtaXTiVxue3R1Fwlg1uXRrjCKTfYsO
 bwB9lS4ATSr1/8mEFNXxp83vcfBh9njzbsU7bn/BuB6RtPLDYqK5dGpG4z4Av64bryXHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNu+x2G5K8bJGHW7QYdbUNBed8J7VEq6Z1LAtRJQDYY=; b=OoWQffVw8mzCr3sQOFPPklhngZ
 7ARejWnTKrewmzsiEOZM70dQuebA22YIkOVwZtKXIYKUnBd8/YRbCrgNs2iaWpcLppyobMrhyRyV+
 JMWNVGLq5yI11z1dwRnE80/W3itlxLTwMiAHj8YhEk9oH07pUeskA822yjd5Wle3WXMU=;
Received: from ganymed.uberspace.de ([185.26.156.242])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7cQW-0000HE-Rj
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 12 Jan 2022 12:08:29 +0000
Received: (qmail 13612 invoked by uid 989); 12 Jan 2022 12:08:21 -0000
Authentication-Results: ganymed.uberspace.de;
	auth=pass (plain)
Message-ID: <9c744b67-3219-9a71-4dad-0c8520beaea8@a-kobel.de>
Date: Wed, 12 Jan 2022 13:08:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Alexander Kobel <a-kobel@a-kobel.de>
To: ibm-acpi-devel@lists.sourceforge.net
References: <12d4b825-a2b9-8cb7-6ed3-db4d66f46a60@a-kobel.de>
In-Reply-To: <12d4b825-a2b9-8cb7-6ed3-db4d66f46a60@a-kobel.de>
X-Rspamd-Bar: -----
X-Rspamd-Report: BAYES_HAM(-2.999344) MIME_GOOD(-0.2) SIGNED_SMIME(-2)
X-Rspamd-Score: -5.199344
Received: from unknown (HELO unkown) (::1)
 by ganymed.uberspace.de (Haraka/2.8.28) with ESMTPSA;
 Wed, 12 Jan 2022 13:08:21 +0100
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On second thought, cc'ing Mark; perhaps the following could
 be extended for a way to check for 0 fans,
 too? (from [ibm-acpi-devel] [External]
 Re: [PATCH] Update whitelisted ThinkPad models with dual f [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.26.156.242 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n7cQW-0000HE-Rj
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add quirk
 for ThinkPads without a fan
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
Cc: Hans de Goede <hdegoede@redhat.com>, Mark Pearson <markpearson@lenovo.com>
Content-Type: multipart/mixed; boundary="===============7164543455813704447=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a cryptographically signed message in MIME format.

--===============7164543455813704447==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080502070407000808060708"

This is a cryptographically signed message in MIME format.

--------------ms080502070407000808060708
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On second thought, cc'ing Mark; perhaps the following could be extended for a way to check for 0 fans, too?
(from [ibm-acpi-devel] [External] Re: [PATCH] Update whitelisted ThinkPad models with dual fan support in thinkpad_acpi)

>> Mark, more in general can you perhaps talk to the firmware team and ask
>> if there is a better way to detect if there are 2 fans in a thinkpad then
>> maintaining a quirk table for this ?
>>
> 
> Yeah - I saw the patch and wondered the same. I will look into that
> (LO-1498 for my internal tracking)


Cheers,
Alex


On 1/12/22 12:18, Alexander Kobel wrote:
> Some ThinkPad models, like the X1 Tablet 1st and 2nd Gen, are passively
> cooled without any fan.  Currently, an entry in /proc/acpi/ibm/fan is
> nevertheless created, and misleadingly shows
> 	status:		enabled
> 	speed:		65535
> 	level:		auto
> 
> This patch adds a TPACPI_FAN_NOFAN quirk definition and corresponding
> handling to not initialize a fan interface at all.
> 
> For the time being, the quirk is only applied for X1 Tablet 2nd Gen
> (types 20JB, 20JC; EC N1O...); further models (such as Gen1, types 20GG
> and 20GH) can be added easily once tested.
> 
> Tested on a 20JCS00C00, BIOS N1OET58W (1.43), EC N1OHT34W.
> 
> Signed-off-by: Alexander Kobel <a-kobel@a-kobel.de>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index e03df2881dc6..7dbe4061bc8a 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8767,9 +8767,10 @@ static const struct attribute_group fan_attr_group = {
>  	.attrs = fan_attributes,
>  };
>  
> -#define TPACPI_FAN_Q1	0x0001		/* Unitialized HFSP */
> -#define TPACPI_FAN_2FAN	0x0002		/* EC 0x31 bit 0 selects fan2 */
> -#define TPACPI_FAN_2CTL	0x0004		/* selects fan2 control */
> +#define TPACPI_FAN_Q1		0x0001		/* Uninitialized HFSP */
> +#define TPACPI_FAN_2FAN		0x0002		/* EC 0x31 bit 0 selects fan2 */
> +#define TPACPI_FAN_2CTL		0x0004		/* selects fan2 control */
> +#define TPACPI_FAN_NOFAN	0x0008		/* no fan available */
>  
>  static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_QEC_IBM('1', 'Y', TPACPI_FAN_Q1),
> @@ -8787,6 +8788,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
> +	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
>  };
>  
>  static int __init fan_init(struct ibm_init_struct *iibm)
> @@ -8816,6 +8818,11 @@ static int __init fan_init(struct ibm_init_struct *iibm)
>  	quirks = tpacpi_check_quirks(fan_quirk_table,
>  				     ARRAY_SIZE(fan_quirk_table));
>  
> +	if (quirks & TPACPI_FAN_NOFAN) {
> +		pr_info("No integrated ThinkPad fan available\n");
> +		return 1;
> +	}
> +
>  	if (gfan_handle) {
>  		/* 570, 600e/x, 770e, 770x */
>  		fan_status_access_mode = TPACPI_FAN_RD_ACPI_GFAN;
> 
> 
> 
> _______________________________________________
> ibm-acpi-devel mailing list
> ibm-acpi-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--------------ms080502070407000808060708
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
Ew0wggY9MIIEJaADAgECAgg3B676YzbKKTANBgkqhkiG9w0BAQsFADBSMQswCQYDVQQGEwJE
RTEXMBUGA1UECgwORnJhdW5ob2ZlciBTSVQxKjAoBgNVBAMMIVZvbGtzdmVyc2NobHVlc3Nl
bHVuZyBSb290IENBIEcwMjAeFw0yMDA1MjYxMzIxNDFaFw0zMDA1MjUxMzIxNDFaMFUxCzAJ
BgNVBAYTAkRFMRcwFQYDVQQKDA5GcmF1bmhvZmVyIFNJVDEtMCsGA1UEAwwkVm9sa3N2ZXJz
Y2hsdWVzc2VsdW5nIFByaXZhdGUgQ0EgRzAyMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIIC
CgKCAgEAzW9OcLabPtfz9rbgtyyuNQCQkmI8cPW39VGsXLX1J9EIcUPvp1ysi6kuqMfw+YOC
LjxopSIhpjhH/p84LzmcBJElRPkzWHJreZry+Lu5SDhOcOH49fNEo7UeYE0wkSJNv+jLMWwU
H93dPaSNeRN/5/Peq6tcKTx0FflS2ZScP9OcPvXgp1c/bXYoRyiOGSVR8/+7qlwNuku2px6f
0c6XOKOwkyTeSghmQ8vdfeqcMd9fNUhn/ijWFHahr0LUGB9We6SoxklOz9gfgSCjhInt+4qy
N6bHl/utH/vj1qnuhkaP25h1eCbz2WKqv0wKWwa/r4F0ItLYYP2YhwICTNLDDT8GmctRdt2S
yLmgXo9Gz0nrwrYuGMWcXNLm682Fgg3wQne0DTszFFUU8PrVOtgzB5Qm6DPrRSUHXQEfT7DY
ZzDA+FmSoTSiCe+aoNPbglta4gDar0B/gni15LtCzW4tNhk3fXkYxEWpbq32vNy3wCDOQazc
vxzko5Ior1iDZJNuzurtp5qRjAnOcUiKhNUJeBnmLDB/Di9XZHIQCD0EjiZzef0OR4+ZbPPM
xl6n9KHdrZ2c8r3yjGJtGkeMc0aMkBpvYNDy/s4fYnE5MRIOWdmMnq23/DvCpsQtF5UWZlF9
MaKVcjXmtGpnhpe0XOkFXvxd9PSM0Oe4uei+buhbF7ECAwEAAaOCARIwggEOMBIGA1UdEwEB
/wQIMAYBAf8CAQAwHwYDVR0jBBgwFoAUPnwBB805qJCxODW0j7v1rBeEocAwTQYIKwYBBQUH
AQEEQTA/MD0GCCsGAQUFBzAChjFodHRwOi8vdm9sa3N2ZXJzY2hsdWVzc2VsdW5nLmRlL2Nh
L3Jvb3RjYV9nMDIuY3J0MBQGA1UdIAQNMAswCQYHKyQPCQMBATBDBgNVHR8EPDA6MDigNqA0
hjJodHRwOi8vdm9sa3N2ZXJzY2hsdWVzc2VsdW5nLmRlL2NybC9yb290Y2FfZzAyLmNybDAd
BgNVHQ4EFgQUBNGCAAc5XwIAgrw4HtCXwN3HOwMwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3
DQEBCwUAA4ICAQAPsI1fETAPUfq7LoI2FxRDylRduC/nVhVca7ORxhZXrFmksT/q1jHU4eXK
IhcVms623/FHhcVHl1qB5G/cgU2OtjEP5/BXIRu4I78EZIhb8U3ZGe9gZql/RSOBD08lhmzv
fRz+nwE2Pl9stzXKohjGRWyfFfuaWKLXUZzCK/wYX6IqhTxjkoEFSgejoO41B886rrm3+aaO
5Db5EBW4gYWF9VCV3bmedmTJzbvOOYDxaVT1+O8E9Ym5BZL+qJNjgdjJXE1TUGyUg6ZweNHT
dse6xTc9KhfnAyppkMUu9AKT6jkloA6l0/T3zEMKhvtf9gLYWJ0zMwm1JfQk5mVMZtQoOPYI
Wj7IVUKPZJMizHoaAAIzi7C0w3XpN3xMDJOs5eRsRPk0qF8UulshIUA/6idOrg7eUY4WZGN1
RZsFYyhBg1sPaeFyFAUs0XJUrWLOKO5f9VZGbmEF6gqbTxdwMCJZzonwpUxVwxKLMa+Z4EMG
QoY1rLNPCRZlzhW+TRBsuy4tGN21PlhvcvEnxs8eHvqlwfM/KwYtXhLG8881KMMSzemRvX/c
pNCU2YlHpAwpdm6cAn60leS0WPfTb6QAqmtQTij6uAfFN46hQDLqpfTWnoPSMvbeyFwqP6Fv
V6RgquAIpe9p5daLY9M+Krkd7mH8QR2PN615TboR0ocoF4REdTCCBlwwggREoAMCAQICCBUM
N0NLozG+MA0GCSqGSIb3DQEBCwUAMFUxCzAJBgNVBAYTAkRFMRcwFQYDVQQKDA5GcmF1bmhv
ZmVyIFNJVDEtMCsGA1UEAwwkVm9sa3N2ZXJzY2hsdWVzc2VsdW5nIFByaXZhdGUgQ0EgRzAy
MB4XDTIwMTAxMTE2NTIzN1oXDTIzMTAxMDE2NTIzN1owgYkxGDAWBgNVBAMMD0FMRVhBTkRF
UiBLT0JFTDEOMAwGA1UEBAwFS09CRUwxEjAQBgNVBCoMCUFMRVhBTkRFUjFJMEcGA1UEBRNA
RDQwMDNFMTc4OTlGMTQzMTI2ODExMzM0OUY1N0M1QzU0NEQ5RjcwNDVCQTkyMEJEMzdDQURB
NTQzOEFGQ0EzODCCAaIwDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGBAM9yNVKr/cuT0WnJ
PLe7kmfd5Wo7rlb1F+harCy3OLgaTqkMI6j37OTXMAmdkZ0y7zrlhbEGCEpODaDPYwVSEb+s
Cv05n3SAMCdy9kQlnqP9We7C/2mbnuKYhpO5P6mUVdPoM+tfTM22YH7CzO8sa1Tq1s/DrIZs
NhXDRvWZEdDwUCjLPKVXGtTqHbUjs7OufxpbyzA7xHE5N7qRff1WrOuq/RS1OvGZVcUjLAmI
loYCvYm1Q3oBYuSZygOsawjmJQ14fh7dKkOjogx6byElWAVBkUQxud8CtBHW+L4VY35uinRJ
k81mwI8ac0zS5FEbYWoF9Gi5pWbCgoIvGXIMcPEQqu8mVBpN/CAMUOUlIkOPDvFqfiQ9TI2C
xnNih8csWwVInRS7m8itJrnlbVfDwdHMJhPT522gCDOC6lXaRUizwGqRh/26W1dJqA2SYmEn
EMH/TcP3eyiFLN5QDXm2odnh+rbvQbwEtlPxup24HGe8RqWFdiCOW1syM+V74lUn5wIDAQAB
o4IBeTCCAXUwHQYDVR0RBBYwFIESYS1rb2JlbEBhLWtvYmVsLmRlMA4GA1UdDwEB/wQEAwIG
wDATBgNVHSUEDDAKBggrBgEFBQcDBDAMBgNVHRMBAf8EAjAAMB8GA1UdIwQYMBaAFATRggAH
OV8CAIK8OB7Ql8DdxzsDMIGCBggrBgEFBQcBAQR2MHQwQAYIKwYBBQUHMAKGNGh0dHA6Ly92
b2xrc3ZlcnNjaGx1ZXNzZWx1bmcuZGUvY2EvcHJpdmF0ZWNhX2cwMi5jcnQwMAYIKwYBBQUH
MAGGJGh0dHA6Ly9vY3NwLnZvbGtzdmVyc2NobHVlc3NlbHVuZy5kZTAUBgNVHSAEDTALMAkG
ByskDwkDAQEwRgYDVR0fBD8wPTA7oDmgN4Y1aHR0cDovL3ZvbGtzdmVyc2NobHVlc3NlbHVu
Zy5kZS9jcmwvcHJpdmF0ZWNhX2cwMi5jcmwwHQYDVR0OBBYEFDadSlBdeaipQdbmS4vn439F
6fkNMA0GCSqGSIb3DQEBCwUAA4ICAQBUhcmTTecspwaSgUUlrG/gUPzDLM/Ty0Jpz4GvRbRn
kJxHlHAopkk8P1SXlnOy2kfC5LgFCRB9tJqSlXmIXwphm90fZKRGZU2dBgxGkDQppXGH6PjJ
P52QAhvpztJDPEqfqkzcpKdkYuFg+KEzqZmsu8Mvy4rqCTRIAtOX5zHVFEIarp7YUMNhzGxg
eQakmDjykC1Xksx/ULsX7r5QW5Fqp1ZL5obNmA2emJgn0VrKRIYY8vqnOwUi13G/lDa+fphz
PMhpIKOKQ9Wy0Wn8mBdSdIqmt2L58Pu14ygwOkK3vnb/QKqayhwme2uf4waXG5or3wZdSr39
SvvGZT8Z6cHw6n7Jw0+gRApkB1cUO7j1T/aHCBcZPJ5i6bBoGrT5E8IHIqj+oZXUCY7jxknL
aHaiOARg8fFkf8lp3uy7ay4WcDIorPa9ugNaCP3SnYvtKvk44ulgMIjhvkG1Mga/70SA9Evq
3cFUle3jaaEYujSxLnN8LVm39dR93QCqcdkIayPA9LT6vizlGoA6BdOMWDzKWWnoelYTb+Ip
iqpafot50MCUqf1e2T0z8Ygki1LLOxlpi/DWQApb/Qq9EomeEYMKm0aJc7166pLiWsk1fWOX
kwBa3phG+CbbUxqotGP++r39Dk8Diny+lYjkRXpoqggzF9g9uxARXBIw0H+G6XbgCzCCBmgw
ggRQoAMCAQICCGRFBiAAmYjgMA0GCSqGSIb3DQEBCwUAMFUxCzAJBgNVBAYTAkRFMRcwFQYD
VQQKDA5GcmF1bmhvZmVyIFNJVDEtMCsGA1UEAwwkVm9sa3N2ZXJzY2hsdWVzc2VsdW5nIFBy
aXZhdGUgQ0EgRzAyMB4XDTIwMTAxMTE2NTIyM1oXDTIzMTAxMDE2NTIyM1owgYkxGDAWBgNV
BAMMD0FMRVhBTkRFUiBLT0JFTDEOMAwGA1UEBAwFS09CRUwxEjAQBgNVBCoMCUFMRVhBTkRF
UjFJMEcGA1UEBRNARDQwMDNFMTc4OTlGMTQzMTI2ODExMzM0OUY1N0M1QzU0NEQ5RjcwNDVC
QTkyMEJEMzdDQURBNTQzOEFGQ0EzODCCAaIwDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGB
AIHe4er7YlQrv+fgKBYbb2FSJLtzoB9s4ZhYgIfQuR1x9+WJvj9EMne5rsHB+OJ5bwZQ1Fnh
qhJhtepikZhLDRVfRbzRdrOSzxnkePhH/SZ9VhtN6327PuSAwxe/te/DPDo6aWZj3d7RoioE
UgkyF5gNWYu082LeSHbvNpDcHUN2Rs7XgZi5uBUnHR1btXA7BOzUMfPhEIqwuCDKLZAGCc0q
2JKhKeOIOsoZ8lP2/HfW3Az1ij6xztb/HfoZnyZMpQC1ly7VgJU5rTLRJz39kscZSBcnxRqP
8cE9rrlPZOgRPK2NR4x+30Sr9sOtnbRYldKWT4uCtqrPrnxNKiDkv3P2h1yKYbCamlqwaoJW
cjrphzLycSGHitalla/f82xHSN+7gJHGp91WYIn+c6jPLcx0wmKUJBB1TIEaeh4izkqLwB0P
1HUBHo50OdmTnRGdnvNt/+Xsc9KetVnmJM2bqXXDlgYMfsULoe6Y0AVemQFvd1V49GePGpGT
NGMe5jf7NwIDAQABo4IBhTCCAYEwHQYDVR0RBBYwFIESYS1rb2JlbEBhLWtvYmVsLmRlMA4G
A1UdDwEB/wQEAwIEMDAfBgNVHSUEGDAWBgorBgEEAYI3CgMEBggrBgEFBQcDBDAMBgNVHRMB
Af8EAjAAMB8GA1UdIwQYMBaAFATRggAHOV8CAIK8OB7Ql8DdxzsDMIGCBggrBgEFBQcBAQR2
MHQwQAYIKwYBBQUHMAKGNGh0dHA6Ly92b2xrc3ZlcnNjaGx1ZXNzZWx1bmcuZGUvY2EvcHJp
dmF0ZWNhX2cwMi5jcnQwMAYIKwYBBQUHMAGGJGh0dHA6Ly9vY3NwLnZvbGtzdmVyc2NobHVl
c3NlbHVuZy5kZTAUBgNVHSAEDTALMAkGByskDwkDAQEwRgYDVR0fBD8wPTA7oDmgN4Y1aHR0
cDovL3ZvbGtzdmVyc2NobHVlc3NlbHVuZy5kZS9jcmwvcHJpdmF0ZWNhX2cwMi5jcmwwHQYD
VR0OBBYEFJiKTcJJSCtBVQS6oS4OSO8QKEWBMA0GCSqGSIb3DQEBCwUAA4ICAQBfdnVpzlnO
JupsJfdYW9xyt3lSky85oA1qPichmW6UjrnIZdunQPJrCTTM+7wUqeqwlhbRmwUKgAPH/5fc
cOnyMulgbvc50VV+mBK4ph/1/fhom7zJYEfvKEpPWg5tGx3/Mp6YIVvuhRnZ7vmodMGXgj/f
1D7yHFJib/430e6pcD76DPaAFA1cVVp5FUP+b0fBzvgYjsgSwL2GTXXaNGEaLqBuhtmInBh/
y4X2ZEz8kw6B2P0GpQ8jg+5I1tNM6vf/KH2FxDj/ykmSsgtyrQAddEjrNQbaQAzXTtHAPui/
6/wbgYfLp05aH7PsLsKGdDS9yb8UaWfWgwFuFz3dLXSdI3YYhXB2QnASX5RV3ndnu9vwGmns
c6iu4C9+h0hFdcWMIEso5K/mV/kXO31xzw7JLU2y5Nk7XEgrXwqFuX4ZruqCfw3EXP1hYnmt
OtfAaSLzTdBS0GskGGnWAs12dJrL8FysZbtX5cgWMyT1nun8ksvSodVgQ+7BA5YHTwfHussP
nPBDabaHmlOUVBi3IYZvoJ90XwuuMvVqcYeEzvuGDrssZHY2pG9DqTeXfzmUdpTfMy7zwu5K
jBPKilDLTXJkrA5wlQpSihjSQG/UPLP+YDsrEuwwBC1DbcSn5KOyMXFpfxsoSegFzb0lxPRc
6sScLr/v96FwvwWpL54Fp9dr0TGCA80wggPJAgEBMGEwVTELMAkGA1UEBhMCREUxFzAVBgNV
BAoMDkZyYXVuaG9mZXIgU0lUMS0wKwYDVQQDDCRWb2xrc3ZlcnNjaGx1ZXNzZWx1bmcgUHJp
dmF0ZSBDQSBHMDICCBUMN0NLozG+MA0GCWCGSAFlAwQCAQUAoIIBvTAYBgkqhkiG9w0BCQMx
CwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMjAxMTIxMjA4MjFaMC8GCSqGSIb3DQEJ
BDEiBCDJjx4fcaOz/7Q9jmfIBpc04AYWk0l/TMHC5oRG+tKFkzBsBgkqhkiG9w0BCQ8xXzBd
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCA
MA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMHAGCSsGAQQBgjcQBDFj
MGEwVTELMAkGA1UEBhMCREUxFzAVBgNVBAoMDkZyYXVuaG9mZXIgU0lUMS0wKwYDVQQDDCRW
b2xrc3ZlcnNjaGx1ZXNzZWx1bmcgUHJpdmF0ZSBDQSBHMDICCGRFBiAAmYjgMHIGCyqGSIb3
DQEJEAILMWOgYTBVMQswCQYDVQQGEwJERTEXMBUGA1UECgwORnJhdW5ob2ZlciBTSVQxLTAr
BgNVBAMMJFZvbGtzdmVyc2NobHVlc3NlbHVuZyBQcml2YXRlIENBIEcwMgIIZEUGIACZiOAw
DQYJKoZIhvcNAQEBBQAEggGAcW/uCNQmseRmatMiZEt88qJrQvwT1moHd0bQNR14KUOU2WOS
ArJuzQBjbTupcLcUqAZCmvlFQ0GEYsFQ5ODjO9/Epmaq44/TQVPDUoMoZdTmc4iBUlgOa5mf
sreUwW7wVvJESkx6Gno4v1QzAWmDmWNnQi1L3hcQHTa50e/wDmyPt44uk2A0Q2ytUB3ISmeH
ZvSPmg5+/MoXoD9PaR9EAxf5FAJVJ+ieiLh6xrXkYuSnzk8ZQMduuw9Q7a9m+18SEfFqfx2U
VeNHXmNE5nkrSeRZ/HWdANf44M1CaeIL8RbAXx6yzwCKrp8PgOqoUiEY47xV1pioaDGvpfOm
7ncr4o22Yf8U+7CnHhsku3PQ5wh9kX0YDlxILR17lNO5tV5OsVlxsVoqy+hUeKu7l8avotAa
XY/OjPDMVQsj6oMeztar1mVd98DqkY+N724HD6UhkfPM0QFR6Npad12P+VwGQXRPKJuo6Jbi
6UsOHBP/QZ3K+SmTHn2c7zdCAeTwLN6dAAAAAAAA
--------------ms080502070407000808060708--


--===============7164543455813704447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7164543455813704447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============7164543455813704447==--

