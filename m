Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 517BD13058B
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  5 Jan 2020 03:50:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1invzg-00085U-L0; Sun, 05 Jan 2020 02:50:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <civic9@gmail.com>) id 1invzf-00085L-5W
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 05 Jan 2020 02:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qm4pxge8yfoDCq+FN4lyxNQmKJWlDYsL3sBYJWljLuU=; b=I4ByYbPBEEKMsPCjl8uOiEoypx
 D1O7ygCRBNPbq7mIFLnyQk8u6ORzn3ZQ3RHfGfKsqvNoV1guQWvj1DCwIlT+W6HpqnT4Icd+acHaP
 kFNqS06pjsTb08F96S7AsI9uuXh+OJShgAthLnJNM4o9LH2wz9LRfp1HLf5vHu0VOMA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Qm4pxge8yfoDCq+FN4lyxNQmKJWlDYsL3sBYJWljLuU=; b=F
 7KLkr19SYrOIOct3UwCgSuUC3p25lQ5gWuHnAhksq6DdvCwPfT9kd+22u8X9LiNcE05sDcVv8aZja
 tjlMs9JgRa1TvUFxu3WP0RM96vL+PlDBQuefLFmlza86ufx3dX7pZzEeg5kx57Y/y4Qy/HR+4AVi8
 zkdxtbhYrOvMUvRA=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1invzY-00A3mS-Q4
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 05 Jan 2020 02:50:19 +0000
Received: by mail-lf1-f54.google.com with SMTP id n25so34265800lfl.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 04 Jan 2020 18:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Qm4pxge8yfoDCq+FN4lyxNQmKJWlDYsL3sBYJWljLuU=;
 b=qMh2ErGAudhyx8lqM7QtIIqGrqtF+QUxB8oAlitmBfCvWNwXl8NLUxvdJ9Gl1ZaVHa
 JblioalJSkgE9igtyDkXwmNmZPjWBYtx2VgpBalt9Y8rTl9/1CKQpF6BIc5PJH7dK6rN
 ymZ3M9QM8XFRZW+syv8CuC1NIjFn8Rl/OpkMmio5ZYKLuYGY4zWS2hNnU0SeMB2ipZ8+
 Y0gbC8GifjYc+P2mTovaplbOMeiLr6ipIu+JgvnGtG1og8P/THogPmn8pP0s/2Gsjq2i
 VhjcKg85TaH8aNieKIhdE36bYEGCspELbP5QK0RyK3JdN+a0nOexyv+AJDxUjiNgQz0r
 MZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Qm4pxge8yfoDCq+FN4lyxNQmKJWlDYsL3sBYJWljLuU=;
 b=EyFCzego+foetwppLcWcVs6ULmq6mIwgkzOoNt5qNW3jylAMSIOOzfSA8UVlEuu3GA
 D8G4c2yMQy2UC+IbYRc1nGkTzXjaxBj1EPDYg/HWhtpZNKzgpABzXA8sM0GqSl5wxmUw
 KhNSOgsM7NZr2uDmc/++espH6ajgzHf4GiFXSuYdHXmnlBpUpBbPM4lAs0oXI059q4Eu
 I+rbxrm5Xvdy4zeh3hpw/rXT5syTVyROxw01NfnJPdFAbhy3DHOy7K7/xuU1ybuoVXbI
 6EbJQWAjfrED32eDg9E74zfQqR1DbzKAZkGBneRzEL/TUdf/0dHpCVKmeP72p8IpQ9Bh
 raWA==
X-Gm-Message-State: APjAAAVa1Zaq1ZrHrO7g63M7TsRxngzcj5AFrd+1BZAGDC9wnpUha/zr
 v0nOLZK+R9AJXXbdx1Eil2yKwUmx3U2mMhT46g0e6pc=
X-Google-Smtp-Source: APXvYqwdA/3JOm0TBiL3UVb2vqBQF6sYE+p90wlOlnmhlZaN7ixklzNP3kyaLOs+Hi8n6Okd7GANiDVz5KpWoFtYh68=
X-Received: by 2002:a19:ec14:: with SMTP id b20mr54905613lfa.63.1578192605920; 
 Sat, 04 Jan 2020 18:50:05 -0800 (PST)
MIME-Version: 1.0
From: civic9 <civic9@gmail.com>
Date: Sun, 5 Jan 2020 03:49:55 +0100
Message-ID: <CAM_y6qgLuW_-bQuErqqOT1khBGauwE3cUk2JvPL47kr2ohbtcw@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (civic9[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (civic9[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1invzY-00A3mS-Q4
Subject: [ibm-acpi-devel] 2nd fan control
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

Many thinkpads nowadays have 2nd fan which is separately controlled.
Is it possible to include required patch in thinkpad_acpi module?
Working patch for current (5.4.7) kernel:
https://github.com/civic9/thinkpad_acpi.2ndfan.patch/blob/master/thinkpad_acpi.2ndfan.patch/thinkpad_acpi.2ndfan.patch
https://github.com/civic9/thinkpad_acpi.2ndfan.patch/

regards,
--c


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
