Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC16AD42E8
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 21:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AEoURbHJgYUCo6YgFDTctTUveFB+9dfbnaGVCrZiHI0=; b=f0UC7UlO6fzbKUWoioMCX5M2RO
	YIuGYQ1OJIjDtK78l9zDD+unLqtjhFe0OKIAeUkkEqA9Qx5Ia8wn+vXYMIRQD9uH8OMNY1pESVuwq
	zS4HDvGiRFPS09jh3TPt84T/m6csrQUCyf5KYWZFv3g+SCr/vSWktFuL7rlsZdLcf0U4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP4eQ-00084o-Je;
	Tue, 10 Jun 2025 19:28:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uP4eO-00084g-Bf
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 19:28:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GQSnKAOBMB9s0fGmY3mTBhQSra7DYsSXp46nPCAlbWk=; b=dGxP1ak8iwSYQ+OUNEPz3DD6I6
 erM0Y3eF0kwcbmWAMeqVB2oGY1VOoZ8cy8dcckf8hHsTfA+6OxiE8wTC2RFK8aoIAqvElH9ur0iNP
 PtjXXizncBZ1NXFauZeP+TuzxQPJg2cfZk22vizese4xDM38nwMa5DyLqFES8k1eRxUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GQSnKAOBMB9s0fGmY3mTBhQSra7DYsSXp46nPCAlbWk=; b=hGdofYNXS3D8cXS/60tn9ZZB/Y
 FX0LmUdJIYTBD/EyS6IsjQSoJBGb3v4IE+IZxJTAPkAutCv4KXKp705jNpE1W76NYgkHoDtvEPdvs
 quNvb6+gFpj8lkWkAXD5NqkleoLUbFy0jQdm9ak896drWXGP/Yfp0uDaqUfTfL3T4cgQ=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP4eL-0002gn-ID for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 19:28:48 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id C6AB311400EB;
 Tue, 10 Jun 2025 15:28:39 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Tue, 10 Jun 2025 15:28:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1749583719; x=
 1749670119; bh=GQSnKAOBMB9s0fGmY3mTBhQSra7DYsSXp46nPCAlbWk=; b=Q
 xYud9H7EKN50siEak1iMsFvYz8lG2UwBYFX7fxWf2JBpImdSGcPLDv62Uo7etfCy
 9mvWczyE/6PGFw3G7HJ0Q172zNLEz5UxI5zKkLFhBeSRaHAXa31SIjxaWphpcBMw
 ija0CqV5P2QJfvuAuXs0bUZY/3J7FHTU8sv6T14QCSPD7t+zwp9SMwzqqaLmoFhg
 ZwsDrhYpY3FDOczCdDuKSHfjcQpligz/1aL2HcMJ7/EESnBLCnXncjCMcepfFGPa
 1TPIIf+hjEJBIWC04EueGYiUiLIUh+ppU9LrlfOdVdfmqv6LhVLKtwiMyRo416Sa
 KoI7x3ZFJKpC8mJIST97g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749583719; x=1749670119; bh=G
 QSnKAOBMB9s0fGmY3mTBhQSra7DYsSXp46nPCAlbWk=; b=hvtVOj4wIUEdtzseU
 sksabIeGPiILSfIBc6lfzG3yA1pARVA3lVZoDyA6xXxe+pLhX9uaq33xMZu73cLn
 eh8HhjqSFjUCRli5RAjnb12OlXOePJtgdUsZ7HBUfZ38x3fXDtGKUGC9+KkLSk/0
 GFKoBBDCDj1cBqxZ5Ig7+Zng47+wKwnNVM7MI32Hj7mIJAR6sxXCKPCsW2HeRJdw
 +ZAVHTpKmKWTFspy38fONdJpMpUL7Z5QfsNk40XlCDiWngXQrP8F655kEuWFizvR
 MnbyvLkFge/+ReFnIE9/pMNQ2S7wrPPNmzD//WosyiHGhl0hh9Nsf3Pc3QHE+e0Y
 Hh31A==
X-ME-Sender: <xms:Z4dIaKCUZ9TaR6nkH6hBFh_O1lrghO6Ahpr0__RLL_P34oroIuOkQw>
 <xme:Z4dIaEgkGIvUBYOEsa4PB2R6tThp78nx0ZlP2eMAcUg4N2d5OCJGNdhZ2ItMyxHPh
 1vxBRdVT9daMcJ9CeA>
X-ME-Received: <xmr:Z4dIaNl6oMNrgKuVzcKAjV8m6s7l3_LDy9HVH-xj1SywrssYcDXdlINx9RyEs7_BFeoXgj_xZRnVvk87Yxo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecuogfuuhhsphgvtghtff
 homhgrihhnucdlgeelmdenogetfedtuddqtdduucdludehmdenucfjughrpefhvfevufff
 kffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghrkhcurfgvrghrshhonhcuoe
 hmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgv
 rhhnpeevveffhfevfefgvedvteehjeetgedukeeijeehgfetiedtueekiefgffejteelje
 enucffohhmrghinheplhgruhhntghhphgrugdrnhgvthdpshhouhhrtggvfhhorhhgvgdr
 nhgvthdpthhhihhnkhifihhkihdrohhrghdpohhrrdgtiidpshhfrdhnvghtnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhn
 qdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepuddtpdhmohguvg
 epshhmthhpohhuthdprhgtphhtthhopehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhu
 vggssgdrtggrpdhrtghpthhtohepihhlphhordhjrghrvhhinhgvnheslhhinhhugidrih
 hnthgvlhdrtghomhdprhgtphhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhm
 pdhrtghpthhtohepihhkvghprghnhhgtsehgmhgrihhlrdgtohhmpdhrtghpthhtohephh
 hmhheshhhmhhdrvghnghdrsghrpdhrtghpthhtohepfigprghrmhhinhesghhmgidruggv
 pdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugidrihhnth
 gvlhdrtghomhdprhgtphhtthhopehplhgrthhfohhrmhdqughrihhvvghrqdigkeeisehv
 ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepihgsmhdqrggtphhiqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:Z4dIaIywoiyKGy8dm2453LYGInnppRGwMlY9aO0whrGwNJ7zQDe89g>
 <xmx:Z4dIaPS3NpGzRi3M1ReG_xQH4z6FCciDYaN6AYVbahrp0mVKJahOEg>
 <xmx:Z4dIaDYnaKuoVWBX7sHZXVnCMfMb_dbsmVZ-dSWwkOzHloWkw7qvMQ>
 <xmx:Z4dIaITH-PoFTX4h63wWuHRt_fOBtWJP-X5MCEZqwhSLBnDHhz4Uxg>
 <xmx:Z4dIaOkG5ImciYmnwvUriahgdxXAkH6KeGngr4WeWFxH0dphW-Do1PHt>
Feedback-ID: ibe194615:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Jun 2025 15:28:38 -0400 (EDT)
From: Mark Pearson <mpearson-lenovo@squebb.ca>
To: mpearson-lenovo@squebb.ca
Date: Tue, 10 Jun 2025 15:28:25 -0400
Message-ID: <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Create lenovo subdirectory for holding Lenovo specific
 drivers.
 Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca> --- Changes in v4:
 - Fix file naming mistake in MAINTAINERS - Re-order patches so this one is
 now second in series Changes in v3: - implement fi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.148 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uP4eL-0002gn-ID
Subject: [ibm-acpi-devel] [PATCH v4 2/2] platform/x86: Move Lenovo files
 into lenovo subdir
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
Cc: W_Armin@gmx.de, ibm-acpi-devel@lists.sourceforge.net, ikepanhc@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 hdegoede@redhat.com, hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com,
 andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Create lenovo subdirectory for holding Lenovo specific drivers.

Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
---
Changes in v4:
 - Fix file naming mistake in MAINTAINERS
 - Re-order patches so this one is now second in series
Changes in v3:
 - implement file naming as suggested by Andy Shevchenko
 - Removed documentation as not required
 - Added date to Makefile for improved clarity on split
 - Cosmetic clean ups.
Changes in v2:
 - Rebased to Linus's latest as requested
 - Updated documentation reference
 - Updated MAINTAINER file
 - Removed X86_PLATFORM_DRIVERS_LENOVO as I was worried about
   maintaining backwards compatibility for the distros.
 - Removed 2nd patch in series splitting out hkeys. That will be for
   the future

 MAINTAINERS                                   |  16 +-
 drivers/platform/x86/Kconfig                  | 230 +----------------
 drivers/platform/x86/Makefile                 |  13 +-
 drivers/platform/x86/lenovo/Kconfig           | 234 ++++++++++++++++++
 drivers/platform/x86/lenovo/Makefile          |  23 ++
 .../x86/{ => lenovo}/ideapad-laptop.c         |   0
 .../x86/{ => lenovo}/ideapad-laptop.h         |   0
 drivers/platform/x86/{ => lenovo}/think-lmi.c |   2 +-
 drivers/platform/x86/{ => lenovo}/think-lmi.h |   0
 .../platform/x86/{ => lenovo}/thinkpad_acpi.c |   2 +-
 .../wmi-camera.c}                             |   0
 .../wmi-hotkey-utilities.c}                   |   0
 .../x86/{lenovo-ymc.c => lenovo/ymc.c}        |   0
 .../yoga-tab2-pro-1380-fastcharger.c}         |   2 +-
 .../{lenovo-yogabook.c => lenovo/yogabook.c}  |   0
 15 files changed, 276 insertions(+), 246 deletions(-)
 create mode 100644 drivers/platform/x86/lenovo/Kconfig
 create mode 100644 drivers/platform/x86/lenovo/Makefile
 rename drivers/platform/x86/{ => lenovo}/ideapad-laptop.c (100%)
 rename drivers/platform/x86/{ => lenovo}/ideapad-laptop.h (100%)
 rename drivers/platform/x86/{ => lenovo}/think-lmi.c (99%)
 rename drivers/platform/x86/{ => lenovo}/think-lmi.h (100%)
 rename drivers/platform/x86/{ => lenovo}/thinkpad_acpi.c (99%)
 rename drivers/platform/x86/{lenovo-wmi-camera.c => lenovo/wmi-camera.c} (100%)
 rename drivers/platform/x86/{lenovo-wmi-hotkey-utilities.c => lenovo/wmi-hotkey-utilities.c} (100%)
 rename drivers/platform/x86/{lenovo-ymc.c => lenovo/ymc.c} (100%)
 rename drivers/platform/x86/{lenovo-yoga-tab2-pro-1380-fastcharger.c => lenovo/yoga-tab2-pro-1380-fastcharger.c} (99%)
 rename drivers/platform/x86/{lenovo-yogabook.c => lenovo/yogabook.c} (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 75da23034e18..ccf1030c30ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11555,7 +11555,7 @@ M:	Ike Panhc <ikepanhc@gmail.com>
 L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
 W:	http://launchpad.net/ideapad-laptop
-F:	drivers/platform/x86/ideapad-laptop.c
+F:	drivers/platform/x86/lenovo/ideapad-laptop.c
 
 IDEAPAD LAPTOP SLIDEBAR DRIVER
 M:	Andrey Moiseev <o2g.org.ru@gmail.com>
@@ -13604,11 +13604,17 @@ S:	Maintained
 W:	http://legousb.sourceforge.net/
 F:	drivers/usb/misc/legousbtower.c
 
+LENOVO drivers
+M:	Mark Pearson <mpearson-lenovo@squebb.ca>
+L:	platform-driver-x86@vger.kernel.org
+S:	Maintained
+F:	drivers/platform/x86/lenovo/*
+
 LENOVO WMI HOTKEY UTILITIES DRIVER
 M:	Jackie Dong <xy-jackie@139.com>
 L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
-F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
+F:	drivers/platform/x86/lenovo/wmi-hotkey-utilities.c
 
 LETSKETCH HID TABLET DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
@@ -24538,14 +24544,14 @@ S:	Maintained
 W:	http://ibm-acpi.sourceforge.net
 W:	http://thinkwiki.org/wiki/Ibm-acpi
 T:	git git://repo.or.cz/linux-2.6/linux-acpi-2.6/ibm-acpi-2.6.git
-F:	drivers/platform/x86/thinkpad_acpi.c
+F:	drivers/platform/x86/lenovo/thinkpad_acpi.c
 
 THINKPAD LMI DRIVER
-M:	Mark Pearson <markpearson@lenovo.com>
+M:	Mark Pearson <mpearson-lenovo@squebb.ca>
 L:	platform-driver-x86@vger.kernel.org
 S:	Maintained
 F:	Documentation/ABI/testing/sysfs-class-firmware-attributes
-F:	drivers/platform/x86/think-lmi.?
+F:	drivers/platform/x86/lenovo/think-lmi.?
 
 THP7312 ISP DRIVER
 M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
diff --git a/drivers/platform/x86/Kconfig b/drivers/platform/x86/Kconfig
index 9f39547d98f6..43055df44827 100644
--- a/drivers/platform/x86/Kconfig
+++ b/drivers/platform/x86/Kconfig
@@ -120,32 +120,6 @@ config GIGABYTE_WMI
 	  To compile this driver as a module, choose M here: the module will
 	  be called gigabyte-wmi.
 
-config YOGABOOK
-	tristate "Lenovo Yoga Book tablet key driver"
-	depends on ACPI_WMI
-	depends on INPUT
-	depends on I2C
-	select LEDS_CLASS
-	select NEW_LEDS
-	help
-	  Say Y here if you want to support the 'Pen' key and keyboard backlight
-	  control on the Lenovo Yoga Book tablets.
-
-	  To compile this driver as a module, choose M here: the module will
-	  be called lenovo-yogabook.
-
-config YT2_1380
-	tristate "Lenovo Yoga Tablet 2 1380 fast charge driver"
-	depends on SERIAL_DEV_BUS
-	depends on EXTCON
-	depends on ACPI
-	help
-	  Say Y here to enable support for the custom fast charging protocol
-	  found on the Lenovo Yoga Tablet 2 1380F / 1380L models.
-
-	  To compile this driver as a module, choose M here: the module will
-	  be called lenovo-yogabook.
-
 config ACERHDF
 	tristate "Acer Aspire One temperature and fan driver"
 	depends on ACPI_EC && THERMAL
@@ -459,43 +433,6 @@ config IBM_RTL
 	 state = 0 (BIOS SMIs on)
 	 state = 1 (BIOS SMIs off)
 
-config IDEAPAD_LAPTOP
-	tristate "Lenovo IdeaPad Laptop Extras"
-	depends on ACPI
-	depends on RFKILL && INPUT
-	depends on SERIO_I8042
-	depends on BACKLIGHT_CLASS_DEVICE
-	depends on ACPI_VIDEO || ACPI_VIDEO = n
-	depends on ACPI_WMI || ACPI_WMI = n
-	select ACPI_PLATFORM_PROFILE
-	select INPUT_SPARSEKMAP
-	select NEW_LEDS
-	select LEDS_CLASS
-	help
-	  This is a driver for Lenovo IdeaPad netbooks contains drivers for
-	  rfkill switch, hotkey, fan control and backlight control.
-
-config LENOVO_WMI_HOTKEY_UTILITIES
-	tristate "Lenovo Hotkey Utility WMI extras driver"
-	depends on ACPI_WMI
-	select NEW_LEDS
-	select LEDS_CLASS
-	imply IDEAPAD_LAPTOP
-	help
-	  This driver provides WMI support for Lenovo customized hotkeys function,
-	  such as LED control for audio/mic mute event for Ideapad, YOGA, XiaoXin,
-	  Gaming, ThinkBook and so on.
-
-config LENOVO_YMC
-	tristate "Lenovo Yoga Tablet Mode Control"
-	depends on ACPI_WMI
-	depends on INPUT
-	depends on IDEAPAD_LAPTOP
-	select INPUT_SPARSEKMAP
-	help
-	  This driver maps the Tablet Mode Control switch to SW_TABLET_MODE input
-	  events for Lenovo Yoga notebooks.
-
 config SENSORS_HDAPS
 	tristate "Thinkpad Hard Drive Active Protection System (hdaps)"
 	depends on INPUT
@@ -514,161 +451,8 @@ config SENSORS_HDAPS
 	  Say Y here if you have an applicable laptop and want to experience
 	  the awesome power of hdaps.
 
-config THINKPAD_ACPI
-	tristate "ThinkPad ACPI Laptop Extras"
-	depends on ACPI_EC
-	depends on ACPI_BATTERY
-	depends on INPUT
-	depends on RFKILL || RFKILL = n
-	depends on ACPI_VIDEO || ACPI_VIDEO = n
-	depends on BACKLIGHT_CLASS_DEVICE
-	depends on I2C
-	depends on DRM
-	select ACPI_PLATFORM_PROFILE
-	select DRM_PRIVACY_SCREEN
-	select HWMON
-	select NVRAM
-	select NEW_LEDS
-	select LEDS_CLASS
-	select INPUT_SPARSEKMAP
-	help
-	  This is a driver for the IBM and Lenovo ThinkPad laptops. It adds
-	  support for Fn-Fx key combinations, Bluetooth control, video
-	  output switching, ThinkLight control, UltraBay eject and more.
-	  For more information about this driver see
-	  <file:Documentation/admin-guide/laptops/thinkpad-acpi.rst> and
-	  <http://ibm-acpi.sf.net/> .
-
-	  This driver was formerly known as ibm-acpi.
-
-	  Extra functionality will be available if the rfkill (CONFIG_RFKILL)
-	  and/or ALSA (CONFIG_SND) subsystems are available in the kernel.
-	  Note that if you want ThinkPad-ACPI to be built-in instead of
-	  modular, ALSA and rfkill will also have to be built-in.
-
-	  If you have an IBM or Lenovo ThinkPad laptop, say Y or M here.
-
-config THINKPAD_ACPI_ALSA_SUPPORT
-	bool "Console audio control ALSA interface"
-	depends on THINKPAD_ACPI
-	depends on SND
-	depends on SND = y || THINKPAD_ACPI = SND
-	default y
-	help
-	  Enables monitoring of the built-in console audio output control
-	  (headphone and speakers), which is operated by the mute and (in
-	  some ThinkPad models) volume hotkeys.
-
-	  If this option is enabled, ThinkPad-ACPI will export an ALSA card
-	  with a single read-only mixer control, which should be used for
-	  on-screen-display feedback purposes by the Desktop Environment.
-
-	  Optionally, the driver will also allow software control (the
-	  ALSA mixer will be made read-write).  Please refer to the driver
-	  documentation for details.
-
-	  All IBM models have both volume and mute control.  Newer Lenovo
-	  models only have mute control (the volume hotkeys are just normal
-	  keys and volume control is done through the main HDA mixer).
-
-config THINKPAD_ACPI_DEBUGFACILITIES
-	bool "Maintainer debug facilities"
-	depends on THINKPAD_ACPI
-	help
-	  Enables extra stuff in the thinkpad-acpi which is completely useless
-	  for normal use.  Read the driver source to find out what it does.
-
-	  Say N here, unless you were told by a kernel maintainer to do
-	  otherwise.
-
-config THINKPAD_ACPI_DEBUG
-	bool "Verbose debug mode"
-	depends on THINKPAD_ACPI
-	help
-	  Enables extra debugging information, at the expense of a slightly
-	  increase in driver size.
-
-	  If you are not sure, say N here.
-
-config THINKPAD_ACPI_UNSAFE_LEDS
-	bool "Allow control of important LEDs (unsafe)"
-	depends on THINKPAD_ACPI
-	help
-	  Overriding LED state on ThinkPads can mask important
-	  firmware alerts (like critical battery condition), or misled
-	  the user into damaging the hardware (undocking or ejecting
-	  the bay while buses are still active), etc.
-
-	  LED control on the ThinkPad is write-only (with very few
-	  exceptions on very ancient models), which makes it
-	  impossible to know beforehand if important information will
-	  be lost when one changes LED state.
-
-	  Users that know what they are doing can enable this option
-	  and the driver will allow control of every LED, including
-	  the ones on the dock stations.
-
-	  Never enable this option on a distribution kernel.
-
-	  Say N here, unless you are building a kernel for your own
-	  use, and need to control the important firmware LEDs.
-
-config THINKPAD_ACPI_VIDEO
-	bool "Video output control support"
-	depends on THINKPAD_ACPI
-	default y
-	help
-	  Allows the thinkpad_acpi driver to provide an interface to control
-	  the various video output ports.
-
-	  This feature often won't work well, depending on ThinkPad model,
-	  display state, video output devices in use, whether there is a X
-	  server running, phase of the moon, and the current mood of
-	  Schroedinger's cat.  If you can use X.org's RandR to control
-	  your ThinkPad's video output ports instead of this feature,
-	  don't think twice: do it and say N here to save memory and avoid
-	  bad interactions with X.org.
-
-	  NOTE: access to this feature is limited to processes with the
-	  CAP_SYS_ADMIN capability, to avoid local DoS issues in platforms
-	  where it interacts badly with X.org.
-
-	  If you are not sure, say Y here but do try to check if you could
-	  be using X.org RandR instead.
-
-config THINKPAD_ACPI_HOTKEY_POLL
-	bool "Support NVRAM polling for hot keys"
-	depends on THINKPAD_ACPI
-	default y
-	help
-	  Some thinkpad models benefit from NVRAM polling to detect a few of
-	  the hot key press events.  If you know your ThinkPad model does not
-	  need to do NVRAM polling to support any of the hot keys you use,
-	  unselecting this option will save about 1kB of memory.
-
-	  ThinkPads T40 and newer, R52 and newer, and X31 and newer are
-	  unlikely to need NVRAM polling in their latest BIOS versions.
-
-	  NVRAM polling can detect at most the following keys: ThinkPad/Access
-	  IBM, Zoom, Switch Display (fn+F7), ThinkLight, Volume up/down/mute,
-	  Brightness up/down, Display Expand (fn+F8), Hibernate (fn+F12).
-
-	  If you are not sure, say Y here.  The driver enables polling only if
-	  it is strictly necessary to do so.
-
-config THINKPAD_LMI
-	tristate "Lenovo WMI-based systems management driver"
-	depends on ACPI_WMI
-	depends on DMI
-	select FW_ATTR_CLASS
-	help
-	  This driver allows changing BIOS settings on Lenovo machines whose
-	  BIOS support the WMI interface.
-
-	  To compile this driver as a module, choose M here: the module will
-	  be called think-lmi.
-
 source "drivers/platform/x86/intel/Kconfig"
+source "drivers/platform/x86/lenovo/Kconfig"
 
 config ACPI_QUICKSTART
 	tristate "ACPI Quickstart button driver"
@@ -1079,18 +863,6 @@ config INSPUR_PLATFORM_PROFILE
 	To compile this driver as a module, choose M here: the module
 	will be called inspur-platform-profile.
 
-config LENOVO_WMI_CAMERA
-	tristate "Lenovo WMI Camera Button driver"
-	depends on ACPI_WMI
-	depends on INPUT
-	help
-	  This driver provides support for Lenovo camera button. The Camera
-	  button is a GPIO device. This driver receives ACPI notifications when
-	  the camera button is switched on/off.
-
-	  To compile this driver as a module, choose M here: the module
-	  will be called lenovo-wmi-camera.
-
 config DASHARO_ACPI
 	tristate "Dasharo ACPI Platform Driver"
 	depends on ACPI
diff --git a/drivers/platform/x86/Makefile b/drivers/platform/x86/Makefile
index abbc2644ff6d..0530a224bebd 100644
--- a/drivers/platform/x86/Makefile
+++ b/drivers/platform/x86/Makefile
@@ -58,17 +58,12 @@ obj-$(CONFIG_X86_PLATFORM_DRIVERS_HP)	+= hp/
 # Hewlett Packard Enterprise
 obj-$(CONFIG_UV_SYSFS)       += uv_sysfs.o
 
-# IBM Thinkpad and Lenovo
+# IBM Thinkpad (before 2005)
 obj-$(CONFIG_IBM_RTL)		+= ibm_rtl.o
-obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
-obj-$(CONFIG_LENOVO_WMI_HOTKEY_UTILITIES)	+= lenovo-wmi-hotkey-utilities.o
-obj-$(CONFIG_LENOVO_YMC)	+= lenovo-ymc.o
 obj-$(CONFIG_SENSORS_HDAPS)	+= hdaps.o
-obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
-obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
-obj-$(CONFIG_YOGABOOK)		+= lenovo-yogabook.o
-obj-$(CONFIG_YT2_1380)		+= lenovo-yoga-tab2-pro-1380-fastcharger.o
-obj-$(CONFIG_LENOVO_WMI_CAMERA)	+= lenovo-wmi-camera.o
+
+# Lenovo
+obj-y				+= lenovo/
 
 # Intel
 obj-y				+= intel/
diff --git a/drivers/platform/x86/lenovo/Kconfig b/drivers/platform/x86/lenovo/Kconfig
new file mode 100644
index 000000000000..a4b565283768
--- /dev/null
+++ b/drivers/platform/x86/lenovo/Kconfig
@@ -0,0 +1,234 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Lenovo X86 Platform Specific Drivers
+#
+
+config IDEAPAD_LAPTOP
+	tristate "Lenovo IdeaPad Laptop Extras"
+	depends on ACPI
+	depends on RFKILL && INPUT
+	depends on SERIO_I8042
+	depends on BACKLIGHT_CLASS_DEVICE
+	depends on ACPI_VIDEO || ACPI_VIDEO = n
+	depends on ACPI_WMI || ACPI_WMI = n
+	select ACPI_PLATFORM_PROFILE
+	select INPUT_SPARSEKMAP
+	select NEW_LEDS
+	select LEDS_CLASS
+	help
+	  This is a driver for Lenovo IdeaPad netbooks contains drivers for
+	  rfkill switch, hotkey, fan control and backlight control.
+
+config LENOVO_WMI_HOTKEY_UTILITIES
+	tristate "Lenovo Hotkey Utility WMI extras driver"
+	depends on ACPI_WMI
+	select NEW_LEDS
+	select LEDS_CLASS
+	imply IDEAPAD_LAPTOP
+	help
+	  This driver provides WMI support for Lenovo customized hotkeys function,
+	  such as LED control for audio/mic mute event for Ideapad, YOGA, XiaoXin,
+	  Gaming, ThinkBook and so on.
+
+config LENOVO_WMI_CAMERA
+	tristate "Lenovo WMI Camera Button driver"
+	depends on ACPI_WMI
+	depends on INPUT
+	help
+	  This driver provides support for Lenovo camera button. The Camera
+	  button is a GPIO device. This driver receives ACPI notifications when
+	  the camera button is switched on/off.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called lenovo-wmi-camera.
+
+config LENOVO_YMC
+	tristate "Lenovo Yoga Tablet Mode Control"
+	depends on ACPI_WMI
+	depends on INPUT
+	depends on IDEAPAD_LAPTOP
+	select INPUT_SPARSEKMAP
+	help
+	  This driver maps the Tablet Mode Control switch to SW_TABLET_MODE input
+	  events for Lenovo Yoga notebooks.
+
+config THINKPAD_ACPI
+	tristate "ThinkPad ACPI Laptop Extras"
+	depends on ACPI_EC
+	depends on ACPI_BATTERY
+	depends on INPUT
+	depends on RFKILL || RFKILL = n
+	depends on ACPI_VIDEO || ACPI_VIDEO = n
+	depends on BACKLIGHT_CLASS_DEVICE
+	depends on I2C
+	depends on DRM
+	select ACPI_PLATFORM_PROFILE
+	select DRM_PRIVACY_SCREEN
+	select HWMON
+	select NVRAM
+	select NEW_LEDS
+	select LEDS_CLASS
+	select INPUT_SPARSEKMAP
+	help
+	  This is a driver for the IBM and Lenovo ThinkPad laptops. It adds
+	  support for Fn-Fx key combinations, Bluetooth control, video
+	  output switching, ThinkLight control, UltraBay eject and more.
+	  For more information about this driver see
+	  <file:Documentation/admin-guide/laptops/thinkpad-acpi.rst> and
+	  <http://ibm-acpi.sf.net/> .
+
+	  This driver was formerly known as ibm-acpi.
+
+	  Extra functionality will be available if the rfkill (CONFIG_RFKILL)
+	  and/or ALSA (CONFIG_SND) subsystems are available in the kernel.
+	  Note that if you want ThinkPad-ACPI to be built-in instead of
+	  modular, ALSA and rfkill will also have to be built-in.
+
+	  If you have an IBM or Lenovo ThinkPad laptop, say Y or M here.
+
+config THINKPAD_ACPI_ALSA_SUPPORT
+	bool "Console audio control ALSA interface"
+	depends on THINKPAD_ACPI
+	depends on SND
+	depends on SND = y || THINKPAD_ACPI = SND
+	default y
+	help
+	  Enables monitoring of the built-in console audio output control
+	  (headphone and speakers), which is operated by the mute and (in
+	  some ThinkPad models) volume hotkeys.
+
+	  If this option is enabled, ThinkPad-ACPI will export an ALSA card
+	  with a single read-only mixer control, which should be used for
+	  on-screen-display feedback purposes by the Desktop Environment.
+
+	  Optionally, the driver will also allow software control (the
+	  ALSA mixer will be made read-write).  Please refer to the driver
+	  documentation for details.
+
+	  All IBM models have both volume and mute control.  Newer Lenovo
+	  models only have mute control (the volume hotkeys are just normal
+	  keys and volume control is done through the main HDA mixer).
+
+config THINKPAD_ACPI_DEBUGFACILITIES
+	bool "Maintainer debug facilities"
+	depends on THINKPAD_ACPI
+	help
+	  Enables extra stuff in the thinkpad-acpi which is completely useless
+	  for normal use.  Read the driver source to find out what it does.
+
+	  Say N here, unless you were told by a kernel maintainer to do
+	  otherwise.
+
+config THINKPAD_ACPI_DEBUG
+	bool "Verbose debug mode"
+	depends on THINKPAD_ACPI
+	help
+	  Enables extra debugging information, at the expense of a slightly
+	  increase in driver size.
+
+	  If you are not sure, say N here.
+
+config THINKPAD_ACPI_UNSAFE_LEDS
+	bool "Allow control of important LEDs (unsafe)"
+	depends on THINKPAD_ACPI
+	help
+	  Overriding LED state on ThinkPads can mask important
+	  firmware alerts (like critical battery condition), or misled
+	  the user into damaging the hardware (undocking or ejecting
+	  the bay while buses are still active), etc.
+
+	  LED control on the ThinkPad is write-only (with very few
+	  exceptions on very ancient models), which makes it
+	  impossible to know beforehand if important information will
+	  be lost when one changes LED state.
+
+	  Users that know what they are doing can enable this option
+	  and the driver will allow control of every LED, including
+	  the ones on the dock stations.
+
+	  Never enable this option on a distribution kernel.
+
+	  Say N here, unless you are building a kernel for your own
+	  use, and need to control the important firmware LEDs.
+
+config THINKPAD_ACPI_VIDEO
+	bool "Video output control support"
+	depends on THINKPAD_ACPI
+	default y
+	help
+	  Allows the thinkpad_acpi driver to provide an interface to control
+	  the various video output ports.
+
+	  This feature often won't work well, depending on ThinkPad model,
+	  display state, video output devices in use, whether there is a X
+	  server running, phase of the moon, and the current mood of
+	  Schroedinger's cat.  If you can use X.org's RandR to control
+	  your ThinkPad's video output ports instead of this feature,
+	  don't think twice: do it and say N here to save memory and avoid
+	  bad interactions with X.org.
+
+	  NOTE: access to this feature is limited to processes with the
+	  CAP_SYS_ADMIN capability, to avoid local DoS issues in platforms
+	  where it interacts badly with X.org.
+
+	  If you are not sure, say Y here but do try to check if you could
+	  be using X.org RandR instead.
+
+config THINKPAD_ACPI_HOTKEY_POLL
+	bool "Support NVRAM polling for hot keys"
+	depends on THINKPAD_ACPI
+	default y
+	help
+	  Some thinkpad models benefit from NVRAM polling to detect a few of
+	  the hot key press events.  If you know your ThinkPad model does not
+	  need to do NVRAM polling to support any of the hot keys you use,
+	  unselecting this option will save about 1kB of memory.
+
+	  ThinkPads T40 and newer, R52 and newer, and X31 and newer are
+	  unlikely to need NVRAM polling in their latest BIOS versions.
+
+	  NVRAM polling can detect at most the following keys: ThinkPad/Access
+	  IBM, Zoom, Switch Display (fn+F7), ThinkLight, Volume up/down/mute,
+	  Brightness up/down, Display Expand (fn+F8), Hibernate (fn+F12).
+
+	  If you are not sure, say Y here.  The driver enables polling only if
+	  it is strictly necessary to do so.
+
+config THINKPAD_LMI
+	tristate "Lenovo WMI-based systems management driver"
+	depends on ACPI_WMI
+	select FW_ATTR_CLASS
+	help
+	  This driver allows changing BIOS settings on Lenovo machines whose
+	  BIOS support the WMI interface.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called think-lmi.
+
+config YOGABOOK
+	tristate "Lenovo Yoga Book tablet key driver"
+	depends on ACPI_WMI
+	depends on INPUT
+	depends on I2C
+	select LEDS_CLASS
+	select NEW_LEDS
+	help
+	  Say Y here if you want to support the 'Pen' key and keyboard backlight
+	  control on the Lenovo Yoga Book tablets.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called lenovo-yogabook.
+
+config YT2_1380
+	tristate "Lenovo Yoga Tablet 2 1380 fast charge driver"
+	depends on SERIAL_DEV_BUS
+	depends on EXTCON
+	depends on ACPI
+	help
+	  Say Y here to enable support for the custom fast charging protocol
+	  found on the Lenovo Yoga Tablet 2 1380F / 1380L models.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called lenovo-yogabook.
+
+
diff --git a/drivers/platform/x86/lenovo/Makefile b/drivers/platform/x86/lenovo/Makefile
new file mode 100644
index 000000000000..f1aa2449293b
--- /dev/null
+++ b/drivers/platform/x86/lenovo/Makefile
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for linux/drivers/platform/x86/lenovo
+# Lenovo x86 Platform Specific Drivers
+#
+obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
+obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
+obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
+
+lenovo-target-$(CONFIG_LENOVO_WMI_HOTKEY_UTILITIES)	+= wmi-hotkey-utilities.o
+lenovo-target-$(CONFIG_LENOVO_YMC)	+= ymc.o
+lenovo-target-$(CONFIG_YOGABOOK)	+= yogabook.o
+lenovo-target-$(CONFIG_YT2_1380)	+= yoga-tab2-pro-1380-fastcharger.o
+lenovo-target-$(CONFIG_LENOVO_WMI_CAMERA)	+= wmi-camera.o
+
+# Add 'lenovo' prefix to each module listed in lenovo-target-*
+define LENOVO_OBJ_TARGET
+lenovo-$(1)-y := $(1).o
+obj-$(2) += lenovo-$(1).o
+endef
+
+$(foreach target, $(basename $(lenovo-target-y)), $(eval $(call LENOVO_OBJ_TARGET,$(target),y)))
+$(foreach target, $(basename $(lenovo-target-m)), $(eval $(call LENOVO_OBJ_TARGET,$(target),m)))
diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/lenovo/ideapad-laptop.c
similarity index 100%
rename from drivers/platform/x86/ideapad-laptop.c
rename to drivers/platform/x86/lenovo/ideapad-laptop.c
diff --git a/drivers/platform/x86/ideapad-laptop.h b/drivers/platform/x86/lenovo/ideapad-laptop.h
similarity index 100%
rename from drivers/platform/x86/ideapad-laptop.h
rename to drivers/platform/x86/lenovo/ideapad-laptop.h
diff --git a/drivers/platform/x86/think-lmi.c b/drivers/platform/x86/lenovo/think-lmi.c
similarity index 99%
rename from drivers/platform/x86/think-lmi.c
rename to drivers/platform/x86/lenovo/think-lmi.c
index 02ede1ec99e9..34a47269e3d3 100644
--- a/drivers/platform/x86/think-lmi.c
+++ b/drivers/platform/x86/lenovo/think-lmi.c
@@ -20,7 +20,7 @@
 #include <linux/types.h>
 #include <linux/dmi.h>
 #include <linux/wmi.h>
-#include "firmware_attributes_class.h"
+#include "../firmware_attributes_class.h"
 #include "think-lmi.h"
 
 static bool debug_support;
diff --git a/drivers/platform/x86/think-lmi.h b/drivers/platform/x86/lenovo/think-lmi.h
similarity index 100%
rename from drivers/platform/x86/think-lmi.h
rename to drivers/platform/x86/lenovo/think-lmi.h
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/lenovo/thinkpad_acpi.c
similarity index 99%
rename from drivers/platform/x86/thinkpad_acpi.c
rename to drivers/platform/x86/lenovo/thinkpad_acpi.c
index e7350c9fa3aa..e1c7bd06fa12 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/lenovo/thinkpad_acpi.c
@@ -81,7 +81,7 @@
 #include <sound/core.h>
 #include <sound/initval.h>
 
-#include "dual_accel_detect.h"
+#include "../dual_accel_detect.h"
 
 /* ThinkPad CMOS commands */
 #define TP_CMOS_VOLUME_DOWN	0
diff --git a/drivers/platform/x86/lenovo-wmi-camera.c b/drivers/platform/x86/lenovo/wmi-camera.c
similarity index 100%
rename from drivers/platform/x86/lenovo-wmi-camera.c
rename to drivers/platform/x86/lenovo/wmi-camera.c
diff --git a/drivers/platform/x86/lenovo-wmi-hotkey-utilities.c b/drivers/platform/x86/lenovo/wmi-hotkey-utilities.c
similarity index 100%
rename from drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
rename to drivers/platform/x86/lenovo/wmi-hotkey-utilities.c
diff --git a/drivers/platform/x86/lenovo-ymc.c b/drivers/platform/x86/lenovo/ymc.c
similarity index 100%
rename from drivers/platform/x86/lenovo-ymc.c
rename to drivers/platform/x86/lenovo/ymc.c
diff --git a/drivers/platform/x86/lenovo-yoga-tab2-pro-1380-fastcharger.c b/drivers/platform/x86/lenovo/yoga-tab2-pro-1380-fastcharger.c
similarity index 99%
rename from drivers/platform/x86/lenovo-yoga-tab2-pro-1380-fastcharger.c
rename to drivers/platform/x86/lenovo/yoga-tab2-pro-1380-fastcharger.c
index 25933cd018d1..b3fd6a35052a 100644
--- a/drivers/platform/x86/lenovo-yoga-tab2-pro-1380-fastcharger.c
+++ b/drivers/platform/x86/lenovo/yoga-tab2-pro-1380-fastcharger.c
@@ -21,7 +21,7 @@
 #include <linux/time.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
-#include "serdev_helpers.h"
+#include "../serdev_helpers.h"
 
 #define YT2_1380_FC_PDEV_NAME		"lenovo-yoga-tab2-pro-1380-fastcharger"
 #define YT2_1380_FC_SERDEV_CTRL		"serial0"
diff --git a/drivers/platform/x86/lenovo-yogabook.c b/drivers/platform/x86/lenovo/yogabook.c
similarity index 100%
rename from drivers/platform/x86/lenovo-yogabook.c
rename to drivers/platform/x86/lenovo/yogabook.c
-- 
2.43.0



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
