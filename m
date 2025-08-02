Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AC3B18FE3
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  2 Aug 2025 22:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MksdjR/kWWionseng8gH6mirMYcbt+sgYVU0vW4RXYI=; b=IVpzEXtXJO5/R4s3ande6/hKzH
	ctaO5CPLK4FgIkXUUGyGQbfsTBFIdK1NwhztaFGqKA++s9HPlJUlqL9FC3WC9fEkmNRgXVdDX5SW7
	xep4r3LBGNdyJNpQ9TbvwXITCnx7C0xMgF6nNX/hm32lElkx2pYha/UjazWp3pccq2/w=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uiIf8-0006My-AC;
	Sat, 02 Aug 2025 20:17:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1uiIf7-0006Mi-30
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 20:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6feW0bXsNPoIkTQk0R5ko/HW1wDlP1tFrsdO/fuplNE=; b=lrldYxMZjirXCeHwa1WuGvySN2
 2EP/CBATfncxz1h1K0oGhaLPobBa+8eC4o+AGYTqwjW7LN5mycbjFHBv3FxbwlZHA16zEIukLHDty
 U8WDSgbPg3bGp/R38dkSXCC57NGZslNJ/MSzzeAIoSlAOHPAWE99UcQPafRaxtPHCKQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6feW0bXsNPoIkTQk0R5ko/HW1wDlP1tFrsdO/fuplNE=; b=G
 iIAB5UjDyDmteNAAVa2rdvS3DG7AQG4vIh5/ET8VooC8E/COOC5xgT+AbLWiwFDwrCh/ocjtNl5X0
 S2aa9CpXkc1hRPZ+pfIvvWnDioIZcM8T5b3ZycbESfLr83j9vifjR5ziwOKcSj47q91ITq59RaO0g
 vKJLBJlNRZAQImTE=;
Received: from mail-yb1-f178.google.com ([209.85.219.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uiIf6-0005Bl-Nx for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 20:17:01 +0000
Received: by mail-yb1-f178.google.com with SMTP id
 3f1490d57ef6-e8ffb1c5f3cso78259276.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 02 Aug 2025 13:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754165815; x=1754770615; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6feW0bXsNPoIkTQk0R5ko/HW1wDlP1tFrsdO/fuplNE=;
 b=avxBEcX0FENRHvlyNiGo5FOd/mr6bJkaA7rCm12zwZlDubpa135byMFYNKFRC/eMfc
 FGc8wHWl9qCduIIg5HIVx5CcUJM3Ux0sVWlYPD7JuK94y1M4j6DiekQPPaqRqJUR7A00
 oSPMxzDQU4XpbxVnNqIaZWHcjd7PXWyoYvXnuLFV5IV4YWAEzkmE9UHKB0x3KOGumwBU
 0tn8jUJFeOkxGukig0MCDkLgTM8r48KY46hvUmO0STBFIV9Nmq6rZSuJitSAgVS7gbrz
 8J/FhRVRUdnr2a07txp3Wia0+fgQZCArdy+X8xHWDT1uPYSQdVeS27eODQ6//B84ycJ0
 RyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754165815; x=1754770615;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6feW0bXsNPoIkTQk0R5ko/HW1wDlP1tFrsdO/fuplNE=;
 b=l53ojrCUpApS3W9xJmg31aaWBCS7kZRWaJpkyrj+HTP257N/X+6M+hAdOwl0dAi3th
 U6iNbIngqDlA09XGy3NSDjqVetZ8niBZPfQ1WtiVb0/B6FTyTEMph+5tzoNP7lCnj79+
 xxL0G4sYPyT3GctEslPZRakVIOlsrf8u/pEMQgrfmkR2V6iSYueybKIrju8zsftqoYf3
 ijym6FBpONEdeYr0ipp7ST+xaYSIFVr1mRsPtgh4Iss39umlDKAE8oiHWIcXbNifsQNg
 kg3Igt6AeQ/fLkliVjKn98lJYNSRLAP+4fPOiVpymTQJgmv4/kkDuemByCGX0OqGHP9U
 4mQw==
X-Gm-Message-State: AOJu0Yx0ABYAHnXeEFqI4u1PgIPbYnduHWZHxvce16j+cJgfHoveac8S
 MHNTrC3L6XOj9oKNv7eCfalxFS5jojFFmdPaExfaJ+TbuOaItoWWQB5FKDJrzrskDtzfh0hq0MI
 bviR9etQ6BPWQkixjYtg5fkf2e4T2WuQKqacGekwL6g==
X-Gm-Gg: ASbGncsnI5Nd6Djhkhn6pn7YYfrsekyWYFRwQMSKG7bY9DB62prQKp9izfnyxPx/ZM8
 dd6cLxNHy1ejD2Tq6zRr2Rg5A7W3T+6IepTJUDHJh7S2YRDZBYaNmWV6aO0TJzNBTOeA2sTfw9K
 DUNmPp2qO64ERoXFyR3FznHl+RB3HBvFTkl410m3x+TvsyRr9BESZB1OKi4CatnX51pbvEqGD89
 hQ0Jyc=
X-Google-Smtp-Source: AGHT+IFO3KqLtt60P5hKis7na5SIoouMK5kZz3hizRQT8y2xw++zJeYKQeQBECc+T6EutSkA5N544e/nQ5g/D+9iejE=
X-Received: by 2002:a05:690c:6d0e:b0:71a:183e:bfe6 with SMTP id
 00721157ae682-71b7ef6f308mr58595677b3.31.1754165814610; Sat, 02 Aug 2025
 13:16:54 -0700 (PDT)
MIME-Version: 1.0
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Sat, 2 Aug 2025 22:16:18 +0200
X-Gm-Features: Ac12FXzj7vy_zDXYOzalsJFO6VHQT0FAnjei_D0Ytb0ZG4zLHBNG8AKoS8Lztu0
Message-ID: <CAEk1YH7qpNzVVxEAZJCVNd1iUUSfNy28G6sARrzjgoVNqPQYKg@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all,
 I have a user related question about the copilot button
 on recent laptops, but in particular the Thinkpad X9-14 (LunarLake) The Copilot
 button,
 which when pressed generates a LEFT META + LEFT SHIFT + F23 key combination
 on the "AT Translated Set 2 keyboard". Is this something that can be
 overridden somehow? Ideally I'd lik [...] 
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
 [209.85.219.178 listed in wl.mailspike.net]
X-Headers-End: 1uiIf6-0005Bl-Nx
Subject: [ibm-acpi-devel] Support Q: copilot button on thinkpad x9-14
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
I have a user related question about the copilot button on recent
laptops, but in particular the Thinkpad X9-14 (LunarLake)

The Copilot button, which when pressed generates a LEFT META + LEFT
SHIFT + F23 key combination on  the "AT Translated Set 2 keyboard".
Is this something that can be overridden somehow? Ideally I'd like it
to become a right ctrl. Not sure if that can be done in the kernel, in
the BIOS or
I should be looking at some user-space solution


evtest reports this:
Event: time 1754165237.366411, -------------- SYN_REPORT ------------
Event: time 1754165238.892087, type 4 (EV_MSC), code 4 (MSC_SCAN), value db
Event: time 1754165238.892087, type 1 (EV_KEY), code 125 (KEY_LEFTMETA), value 1
Event: time 1754165238.892087, -------------- SYN_REPORT ------------
Event: time 1754165238.892984, type 4 (EV_MSC), code 4 (MSC_SCAN), value 2a
Event: time 1754165238.892984, type 1 (EV_KEY), code 42 (KEY_LEFTSHIFT), value 1
Event: time 1754165238.892984, -------------- SYN_REPORT ------------
Event: time 1754165238.893919, type 4 (EV_MSC), code 4 (MSC_SCAN), value 6e
Event: time 1754165238.893919, type 1 (EV_KEY), code 193 (KEY_F23), value 1
Event: time 1754165238.893919, -------------- SYN_REPORT ------------
Event: time 1754165238.927818, type 4 (EV_MSC), code 4 (MSC_SCAN), value 6e
Event: time 1754165238.927818, type 1 (EV_KEY), code 193 (KEY_F23), value 0
Event: time 1754165238.927818, -------------- SYN_REPORT ------------
Event: time 1754165238.931839, type 4 (EV_MSC), code 4 (MSC_SCAN), value 2a
Event: time 1754165238.931839, type 1 (EV_KEY), code 42 (KEY_LEFTSHIFT), value 0
Event: time 1754165238.931839, -------------- SYN_REPORT ------------
Event: time 1754165238.934798, type 4 (EV_MSC), code 4 (MSC_SCAN), value db
Event: time 1754165238.934798, type 1 (EV_KEY), code 125 (KEY_LEFTMETA), value 0
Event: time 1754165238.934798, -------------- SYN_REPORT ------------

-- 
damjan


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
