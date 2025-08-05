Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9DDB1B522
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  5 Aug 2025 15:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vmjm+SkYKArdRuyiilnpDhrszt8uQBc+ZYmftLr9ADk=; b=CyzxjrDcdFj0gu/ouF7Io0uM/f
	U7SR2kRPQpRsxApJ0FrajBboVw1fWFJ6SdB4DYdN3nUF9yR3wDSC+v+PKn/PyZLvtwyGVIid4rH0f
	THeXY9iyjfjLGgKjNhJOQZsDpg2vdGtcsPRJBtCVgRjKyUq+rQWbnU79faQOl9x6oSvY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ujHvK-00021S-7W;
	Tue, 05 Aug 2025 13:41:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1ujHvI-00021M-Uc
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X7/s4Pegeq5QQArDBP0k3HUXMIpbS4Qq6vNy8CDssHo=; b=jPsAR+MyEGa0YoqUmqFOD8a+R6
 XPpv4r3szR3n8BV2MD+SIGU4zW2oQHJh3xU+eIhfO8N6MB0j6vBrdtrnhoyiU6+xahgs5RlMubWLD
 79GmqCyDBARii2MIHsKNn2CJdJxe8tzAdKnZObI3TB9S9XQmFNZiOnNiALSLQMiEr8xI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X7/s4Pegeq5QQArDBP0k3HUXMIpbS4Qq6vNy8CDssHo=; b=h
 SoJOS8A/vszQwHhvoqcKAsT37y62Zpchu8ikVqlr6fXU+aMFi3mxX4S9b6oZeljfYZpdcVUjFDyNK
 QwHNr6YeZ2wiR0E9gnQ2swy8feY4XtEd1TtOKRS6xw4AnPn9rlKzCoUaLlMSXzWdYmenHK3JAr/u/
 nSldCOqR+vkeU8j4=;
Received: from mail-yw1-f177.google.com ([209.85.128.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ujHvI-0002NA-LK for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 13:41:48 +0000
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-71b737ec362so44219147b3.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 05 Aug 2025 06:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754401297; x=1755006097; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=X7/s4Pegeq5QQArDBP0k3HUXMIpbS4Qq6vNy8CDssHo=;
 b=TkqYOu2mrgalTJ42wEQHeIx1/hHmgE/W6qcRlcbjl8X+/VzLAqhKD6xU5/46y/mv5g
 6sk+QxcPwFvspnDQwvyNeqQM8tJn294VsBf/ygC2+HIbg6JhBZOWcBjDZXKGxMqN5ppG
 sELVBM1nNsrpmE+rD8PxQ0HRV2izvYKBujSZuf9NMR2KObn5OUy0g+Hoy0ogbH9fsFIN
 BYJXCOt4KvniM7AoSgp8E8uV48JXDYaZZOO2f8/dPlHam8nT76aLaQ0+JYq3i+cChoCu
 NrFGlzYxm4ZKDZJRMNjcGgsehRDF84ykp2xXL1UonV+yJ6TUX6p6XkrW5Xo4x2pElwD6
 RC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754401297; x=1755006097;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=X7/s4Pegeq5QQArDBP0k3HUXMIpbS4Qq6vNy8CDssHo=;
 b=Kc2CwJ/AmA/PeM2Qxe6viSQeVD1h/aS3buAHiDXSemF2dq5H/dW4cojVRl+wZQpAZ5
 P1O0nPbh47xZjz6Iyfrcq5o2RKfeBym0FK60nJJOE4rpwnB3bE0LIUdEWffWdULKN4X0
 YoMljWmtKnV6GSnNJe58Paa5czd5FEfb5tYY6Wg/hUySw9SYbbmINL4OGIempd89SPmh
 20axMOIY9dLVOwIQHhM41dWB3ihkPBidVkwd/b9yxiQxQDmQBj3n1qcP9oRSZ9pMv3lL
 oNvzaiGh0CMHhWF7WmwWqQLCKDJppy62PALfVVJqDKus34KvRRSKI6hD4AffOLEsoTtl
 XFPg==
X-Gm-Message-State: AOJu0YyQFiTaOOPxUic3Dxh+iwT98WJUJ/tsGmQrBDCSGyktt5dujNbE
 GQN44hztrxGC/Ip6spuUOhXpWHCeVM8xindCu5kW0Dbbp5UTrs3UoFSMl4uvgyrD/iEa/MsAr1L
 OmGVOdfhLGrZZ49u719Kv2/1ltksg2Hi7QDs7yBKaDQ==
X-Gm-Gg: ASbGncutH/xJJaIJ+exCIZQkyYBLmB1Em18wJca39pvR0MIVtDONCT9OERpExBrR5sj
 UkrD3j6POddvY0/O4OmuaV63FBbDzQj68qzURruSkXUwbrVNy3iZTUxaadknPzwiXRS40dHJE0g
 NFwfTEKiM9JqaKSo45ZYOsAb3iZGhZnFcr7hWPVhG+Vx+iM9gGecRYovgiG1ftga9ItdKm0Vj+M
 WYmnhQ=
X-Google-Smtp-Source: AGHT+IH9991AdwUi0C2/LNPlmiHh+aHDtbRQtAp869dT41wF+D7XEIr3e1wc/iXE6jNrHSbc0XWKN8NMmWP5Thg64rA=
X-Received: by 2002:a05:690c:e:b0:719:5175:3091 with SMTP id
 00721157ae682-71b7f568d9cmr162177107b3.40.1754401297272; Tue, 05 Aug 2025
 06:41:37 -0700 (PDT)
MIME-Version: 1.0
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Tue, 5 Aug 2025 15:40:54 +0200
X-Gm-Features: Ac12FXwr1ysOoe_KlmZoyiapUlklYPERoyyAjWCCm9OSBLri5-a5oPKWuJKbI_c
Message-ID: <CAEk1YH4dFncVBuf7JGEdG8Nrf9Bnyy0XbHF6daQiCWrogN=UGA@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all,
 I've been compiling recent torvalds/master and noticed
 I've lost the control of the *mute mic led* (on the Thinkpad X9-14). For
 context, the `snd-ctl-led` ("ALSA control interface to LED trigger code")
 allows the mic mute led to follow the muted state of the microphone capture
 mixer, and to select if you want the led on wh [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [gdamjan(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.177 listed in wl.mailspike.net]
X-Headers-End: 1ujHvI-0002NA-LK
Subject: [ibm-acpi-devel] SND_HDA_GENERIC_LEDS/SND_CTL_LED dependency of
 config THINKPAD_ACPI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi all,
I've been compiling recent torvalds/master and noticed I've lost the
control of the *mute mic led* (on the Thinkpad X9-14).

For context, the `snd-ctl-led` ("ALSA control interface to LED trigger
code") allows the mic mute led to follow the muted state of the
microphone capture mixer,
and to select if you want the led on when the mic is muted or is capturing.

Problem is, both SND_HDA_GENERIC_LEDS and SND_CTL_LED are not user
selectable, and

* SND_CTL_LED is selected/enabled by SND_HDA_GENERIC when
SND_HDA_GENERIC_LEDS is enabled; and
* SND_HDA_GENERIC_LEDS is only selected by 4 of the codecs in
`sound/hda/codecs/`.

Now none of those 4 codecs are required on *this* Thinkpad, so not
sure what the proper solution should be.

I did fix the issue *for me* by adding
`select SND_HDA_GENERIC_LEDS if SND_HDA_GENERIC` to `config
THINKPAD_ACPI` - but I'm not sure if that's the proper way forward.


--
damjan


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
