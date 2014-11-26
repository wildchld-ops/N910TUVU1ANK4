.class Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectModeInfo"
.end annotation


# instance fields
.field public mEnablePrefName:Ljava/lang/String;

.field public mModeSettingName:Ljava/lang/String;

.field public mPreference:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/AutoRejectPreference;
    .param p2    # Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    return-void
.end method
