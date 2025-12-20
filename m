Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A81CCCD324D
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 20 Dec 2025 16:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=65j/sPkVMvmMKmdFAJ0YLQRvU3xGaDfo7mFaJA9Yax8=; b=dIB5nOp+oiOWg1aR9j3Kt4dlpu
	ufz5CsWKCCD7S/CoZonPzHxt0fzp4uqoPmAdYWycocZU9RHQXik9eF+Gm+Bz1BFFGabNriYKaehys
	9WA0wdaVwRaoqJYmJEgUO61RAzeWmoAGReRegNeS25/PFD3d2MC4KyxGYxKUb8tNaZJg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vWyzq-0004M0-4O;
	Sat, 20 Dec 2025 15:35:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cheako@mikemestnik.net>) id 1vWyzo-0004Lt-M1
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 20 Dec 2025 15:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L7fPF6bvc+gKi1yAIPQOc1p9wgIzqd6aQnqYd6gvPNc=; b=SYc63mjIFOwG+YDBf5JBvddzwr
 F8TQ/Sb/GCdvwtzDNe65w++83qowHnN9ssm81Ezt5XdA2f1fChNQqpq7aoKiJXUl3JB7soT+2OYDx
 XTzYZ3KAudsClnCv8qjVn3lJPg9VcEJRZiIRt29WC4wRl4CkXtzRpnBCFzLUvF+3WUYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L7fPF6bvc+gKi1yAIPQOc1p9wgIzqd6aQnqYd6gvPNc=; b=g
 Y5DQD/pJps6q7E519EWWWY04+vM+4ufHxrzufF5x7z33s4nXoc4/5AxrM8rSU005s/ikPX/hEMtpl
 Yvmpoa0cfnFJTJzXnQWU6sDumAoPrA4M2TNd//AnYa10IChXfyskw52pCQp5HivbUkxNiULQ2YnKX
 L2PanmwQqX8hQ/n8=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vWyzo-00006C-3f for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 20 Dec 2025 15:35:52 +0000
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-37fccf7035aso21394651fa.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 20 Dec 2025 07:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mikemestnik-net.20230601.gappssmtp.com; s=20230601; t=1766244945;
 x=1766849745; darn=lists.sourceforge.net; 
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=L7fPF6bvc+gKi1yAIPQOc1p9wgIzqd6aQnqYd6gvPNc=;
 b=SDTmJVTX7zBpH3M4SkQxywOkXp2Adz3IaIny9xKa1akD+BKHYo0oqra7oGJEsIHIyK
 SFlRVratB4Q3FSRIs2ajcg46jtbhk+LvFX37aLuwPHegy2xiyNrVJb9Ww3EvF5vjFu8T
 SV4fjA+8lgXZU3QnJ60fAZ86DKPDeKc4Pfzr4n9ofPn7wcn4AihgVMH7IlRkimINoEuU
 QL6si4jiiVpN49Vha3ujxD7FGiOZtrngeOrcD8aBwN57GZZ4ZDm4XKH7nbYYrtTMXJtC
 ENn1OLLqgwiFUJmGlx+hPsw5Xs3q947Ln9zWZawKnsj2SZHgZ1kK1AdLexO4+OQ02/C1
 SW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766244945; x=1766849745;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=L7fPF6bvc+gKi1yAIPQOc1p9wgIzqd6aQnqYd6gvPNc=;
 b=SRzVg/gKpsEiYxT5y1+ucKlhkPX7rFUszaA78EVKHcGnf2ZuUKJl4Yfaz7ZFgIiOcG
 rj2tLF9Yx47bKNofqbG46o4Hf7vLBqwIsH8/lnLZdUjfXcQ9QCP8Tp4N7IIJbXkI5AXM
 x2J44SOMbNBfIxD2QyCMvYSaphMtU5oF1BMcAuVf7iv4xkUFosPAAZ0cRnt90yo40M3E
 32/FDFTHe5274kbiXmTxL0PI/BkOJfloQdkzKJP92YWZc7wovwkdL0ubiF3OxVRlCSdE
 9TPkOp/7jihErv4EcrLqBHbZjyaHsbmY0yqkqSIbvoRIjaNwh12A7dEJyv/R+KHSES4J
 5RYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDv1iEe9vH1eUKWRDXgQezIlXxzVtQUHQVheGKIpHB7q/GWcGs6b6BlXpXLwTZGzaAFlloh1ztjljL9TAwbw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxalaJuNwiyUTD66vXZHptEiz03Z89UFHZxzFI85+YMkE9KoLVV
 M6GPsZfAQy2D7X3otVcMr5w6425Uh6ByoKb5/0ah9R53aJJs06IHtyCXqHGn/kL2FbXFCb0+uXr
 mZAPKzHn2zRH6uDdyIiT/hQMt0bbAoE0g073Misml6+XVtpJmywIgCeVBGg==
X-Gm-Gg: AY/fxX5y8k5Xyn0HaJX3SFuufvMLzWtZ2j6Cu4/qW5egy/ZjV1czHysp/yHAUdyZUlq
 AU6fqUy5A4WprSP3y6WJL5NVrB2b/+6JjVyUibKo6tQ5zsdCyv/ICKiaT2zSNqdB253cKplGsPe
 EMvpRZnH9cg3HiRGCOr508wpD+tL+LlakSrjLS6bPunVDF4Zu8XiaWyf0rFinHpAiuG4Yo5R1db
 08Ntya1mNaxEf+uvGvu7pOQfXX4opfuXknBZPmiGSyNxTAeu+lYOtl1wJ8pbs3VqkYwUeqEYeGy
 AY9jXWowDFPQrS9B1CTlswbYOmu1LTSoGPIlft0Q0kH5kTlaZaf2Fj7bXSwq1cyYnWUOqskQkWx
 wbl7cnAiC7dqokZykSCz0mbwXJvCj1ZK0EaFrQhgBVCDX
X-Google-Smtp-Source: AGHT+IGhSAZoLzgxBKuhQ76aCl4IdOPtXiDHDIMgGhbg2PKAuDIyeJK1m2zaxbbvMUNRYwlR5vyVT4HrJ95gkZhoShc=
X-Received: by 2002:a05:651c:1507:b0:373:a3e2:b907 with SMTP id
 38308e7fff4ca-38121582da0mr18435001fa.10.1766243079088; Sat, 20 Dec 2025
 07:04:39 -0800 (PST)
MIME-Version: 1.0
From: Mike Mestnik <cheako+debian-kernel@mikemestnik.net>
Date: Sat, 20 Dec 2025 09:04:27 -0600
X-Gm-Features: AQt7F2qFb1gdyUpy7kuINrZZ3QH6iBFq5_1C8S4o_HTlcFOTOqn_EyBH6jxwF5c
Message-ID: <CAF8px56B22OPhgzaGp3PuyXBLyCqs-gS5uN=GxGhiV0kFn_gxw@mail.gmail.com>
To: linux-bluetooth@vger.kernel.org, linux-acpi@vger.kernel.org, 
 ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: History of this message:
 https://bugzilla.kernel.org/show_bug.cgi?id=216936
 I'm guessing what's happening to ppl is, like me, it worked after one test
 and they were just happy for it to be over. So I' [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
X-Headers-End: 1vWyzo-00006C-3f
Subject: [ibm-acpi-devel] btusb: Device disconnects,
 Failed to send firmware data (-19)
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

History of this message: https://bugzilla.kernel.org/show_bug.cgi?id=216936
I'm guessing what's happening to ppl is, like me, it worked after one
test and they were just happy for it to be over.  So I'm writing this
email to document my journey, give tips and next steps.
Last test:
I added `blacklist thinkpad_acpi` to `/etc/modprobe.d/wifi.conf`.  Let
me be clear AFAICT this is random so there is a 50/50 chance that
thinkpad_acpi is fine/bad.

What to do if you get the `Failed to send firmware data (-19)` error.
Make several changes, for debugging purposes, and then reboot.  For me
the ritual of watching the power button go out and back on after 5
seconds being off, then hitting power, waiting 2 seconds and turning
it back on...  Seems ohh so much to help.  However the *fix* for me
happened from just running `$ sudo reboot` from xterm and waiting,
watching the "shortened" grub timeout, watching the autologin,
watching the xmessage autostart and being surprised that it was
working.  If you have this issue setup all of those.

For testing add NOPASSWD to sudoers.
```text
==> /home/cheako/.config/autostart/xmessage.desktop <==
[Desktop Entry]
Type=Application
Exec=sh -c 'sudo dmesg|grep -e hci0 -e iwl -e "usb 3-1: " |xmessage -file -'
Hidden=false
X-GNOME-Autostart-enabled=true
Name[en_US]=xmessage
Name=xmessage
Comment[en_US]=xmessage bt report
Comment=xmessage bt report
```

I'm convinced the random nature of this issue makes you think rituals
help, but they logically cannot.  Make sure to do a lot of testing if
you think you've found something that helps.

This is what was failing the download for me every time, I guess.
`kernel: usb 3-2: USB disconnect, device number 3`  If this happened
b4 `btusb` was loaded I'd get *nothing*, but sometimes it would happen
during the firmware xfer...  leading me to think ohh man cold boots
really do help.

Let's turn up the logging, there are a few of these, do them all then
reboot!! If you do get it working run `echo 'module btusb =_; module
usbcore =_; module xhci_hcd =_;' | sudo tee
/sys/kernel/debug/dynamic_debug/control` to turn off the dynbdg
logging, without having to reboot.

```text
==> /etc/modprobe.d/wifi.conf <==
# Some of these settings were suggested, I say don't bother.  YMMV
# options iwlwifi bt_coex_active=1 11n_disable=0 power_save=0 uapsd_disable=1
# options iwlmvm power_scheme=1
# This one is great for ruling it out as the cause of the
disconnection!  and it does, the device disconnects with and without
btusb.
# blacklist btusb

# This is the big one, it logs the xfer so you can watch the whole thing.
options btusb dyndbg=" func btusb_tx_complete +pmfl; func
btusb_send_frame_intel +pmfl; func btusb_bulk_complete +pmfl;"

# This was the fix for me, YMMV.
blacklist thinkpad_acpi
```

To make this active on reboot, rebuild/update your initramfs.  On
Debian that's `update-initramfs -k all -u`.

Add this to debug USB, a kernel cmdline.  Debian: `/etc/default/grub`
then `update-grub`

P.S. To read the slow ftrace, quickly run `sudo cat
/sys/kernel/tracing/trace >trace &`.  To stop ftrace run `echo
nop|sudo tee /sys/kernel/tracing/current_tracer`, replaces `function`.
```
# Essential
usbcore.dyndbg="+pmfl"
xhci_hcd.dyndbg="+pmfl"
trace_event=":mod:btusb,:mod:iwlwifi,:mod:iwlmvm"
tp_printk
log_buf_len=4M

# This may help, did nothing for me
usbcore.autosuspend=-1

# These kill performance, adding a minute to get to the desktop.
 ftrace=function ftrace_filter=":mod:btusb,:mod:iwlwifi" trace_buf_size=256M

# There is no point in removing these as the bug triggers while the
desktop is hogging the display.
quiet splash
```

The only other thing I can suggest is to tweak the `dmesg|grep`, the
dyndbg(some modules are built-in and some are loaded by modprobe), and
the trace_event(`:mod:` is designed to work for modules that have yet
to be loaded as well as loaded).

The 2 technologies used:
Dynamic Debug
https://docs.kernel.org/trace/index.html

I'd be curious to see your logs and good luck!


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
