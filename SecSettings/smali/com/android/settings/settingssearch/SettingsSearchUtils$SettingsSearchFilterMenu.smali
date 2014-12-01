.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchFilterMenu"
.end annotation


# static fields
.field private static final KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

.field private static final RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

.field private static final SUB_USER_REMOVED_MENU:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0b079e

    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b0750

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b0754

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b0755

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0b075c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0b0020

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0b0021

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0b0023

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0b077c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f0b0792

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f0b078f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f0b078e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f0b0737

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f0b0024

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f0b0799

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f0b079d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f0b0743

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f0b0744

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f0b0745

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f0b0746

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f0b0741

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f0b0748

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f0b0749

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b0750

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b0754

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b0755

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0b075c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0b0020

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0b0021

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0b0023

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0b077c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f0b0792

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f0b078f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f0b078e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f0b0737

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f0b0024

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f0b0799

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f0b079d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f0b0743

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f0b0744

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f0b0745

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f0b0746

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f0b0741

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f0b0748

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f0b0749

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f0b0751

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f0b0795

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f0b077e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f0b078a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f0b0733

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f0b0736

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f0b0734

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f0b0796

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    const/16 v0, 0x67

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b0750

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b0754

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0b074f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0b0755

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0b075c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0b07b6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0b0761

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0b07af

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0b0762

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f0b0764

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f0b0765

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f0b0020

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f0b0021

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f0b0023

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f0b076a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f0b001d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f0b077c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f0b0792

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f0b078f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f0b078e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f0b077e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f0b0736

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f0b0737

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f0b0799

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f0b0740

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f0b0743

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f0b0744

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f0b0745

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f0b0746

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f0b0741

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7f0b0748

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x7f0b0747

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7f0b0749

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7f0b0774

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7f0b0778

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x7f0b0026

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x7f0b07a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x7f0b078a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x7f0b07ba

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x7f0b0019

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x7f0b073e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x7f0b07ba

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x7f0b0769

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x7f0b073a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "help"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "audio_output"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "lock_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "font_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "screensaver"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "screen_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "lockscreen_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "both_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "recommended_apps_phone"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "turn_over"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "palm_swipe"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "bgm_on_lock_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "palm_swipe_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "security_policy_updates"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "encryption"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "sdEncpref"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "RemoteControls"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "ruim_lock_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "nfc_setting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 15

    const/4 v11, 0x0

    const/4 v10, 0x1

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-nez v12, :cond_16

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_clock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_myprofile_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "owner_info_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "quick_note"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_magazine_card"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "dualclock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "homecity_timezone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_camera_shortcut"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_size"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_size_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "show_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "health_info_panel"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "easy_mode_switch"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f0b0790

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const v12, 0x7f0b0748

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_0
    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v12, "com.vlingo.midas"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    const-string v12, "com.vlingo.midas"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :try_start_1
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.vlingo.midas"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "SVoice is installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "svoice_settings is disabled"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x7f0b0749

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v12

    if-nez v12, :cond_5

    :try_start_2
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.android.cloudagent"

    const/4 v14, 0x5

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wmanager_connected"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_1f

    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    if-eq v12, v10, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    const-string v12, "sim_lock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sim_toggle"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sim_pin"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_7
    const-string v12, "CDMA"

    invoke-static {v12}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "3"

    const-string v13, "gsm.sim.currentcardstatus"

    const-string v14, "9"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "3"

    const-string v13, "gsm.sim.currentcardstatus2"

    const-string v14, "9"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "ruim_lock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_8
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "default_input_method"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "sip_feedback_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sip_feedback_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_9
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "access_control_use"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "direct_accesscontrol"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_a
    const-string v12, "captioning_typeface"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_foreground_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_edge_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_edge_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_background_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_background_opacity"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "captioning_foreground_opacity"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v6, 0x1

    :cond_b
    if-eqz v6, :cond_c

    const-string v12, "sound_mode"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ringtone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "phone_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "notification_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibrate_when_ringing"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "dtmf_tone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sound_effects"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_sounds"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "gps_notification_sounds"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "haptic_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "audio_output"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "musicfx"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "my_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sound_call"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sound_message"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sound_email"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sound_splanner"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sip_feedback_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "sip_feedback_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_20

    move v5, v10

    :goto_5
    if-nez v5, :cond_d

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_21

    :cond_d
    const-string v10, "roaming_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_e
    :goto_6
    if-eqz v5, :cond_f

    const-string v10, "lockscreen_wallpaper"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "both_wallpaper"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_f
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchUtils;->samsungAccountExists(Landroid/content/Context;)Z
    invoke-static {v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$400(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "pref_add_samsung_account"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_10
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "sview_color"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "sview_color_2014"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "sview_style_clock"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "sview_edge_cover_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "select_info"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "weather"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "walking_mate"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "scover_airmessage"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "automatic_unlock"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "show_in_call_screen"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "share_acc_setting_menu"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "shared_accessibility_export_import"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v10, "shared_accessibility_share"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_14
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_15
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_19

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_19
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v12, "lock_screen_widget_options"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "safetyzone_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "multiple_lock_screen"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_size"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "clock_size_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "show_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    if-eqz v12, :cond_1e

    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    const/high16 v13, 0x20000

    if-ne v12, v13, :cond_1d

    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_1d
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_6
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "SVoice is not installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "Cloud package not found"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x7f0b0736

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1f
    const-string v12, "unlock_set_smart"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_20
    move v5, v11

    goto/16 :goto_5

    :cond_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_UseChameleon"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "persist.sys.roaming_menu"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v10, :cond_e

    const-string v10, "roaming_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_2
    move-exception v12

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x61000 -> :sswitch_3
        0x90000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
