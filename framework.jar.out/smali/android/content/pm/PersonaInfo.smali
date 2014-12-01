.class public Landroid/content/pm/PersonaInfo;
.super Landroid/content/pm/UserInfo;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field public canUseBluetooth:Z

.field public canUseExtSdcard:Z

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field private fingerCount:I

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field private handlerApkLocation:Ljava/lang/String;

.field private handlerPackageName:Ljava/lang/String;

.field private handlerServiceName:Ljava/lang/String;

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAdminLockedJustBefore:Z

.field private isFingerIdentifyFailed:Z

.field private isFingerReset:Z

.field private isFingerTimeout:Z

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field public isRestarting:Z

.field public isSdpMinor:Z

.field public isSuperLocked:Z

.field private isUnlockedAfterTurnOn:Z

.field public isUserManaged:Z

.field private lastKeyguardUnlockTime:J

.field public lastLoggedOutTime:J

.field public lockInProgress:Z

.field public needsRestart:Z

.field public oldState:I

.field parentId:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field public sdpEnabled:Z

.field private setupWizardApkLocation:Ljava/lang/String;

.field public shocutGuideDisplay:Z

.field public state:I

.field public timaEcrytfsIndex:I

.field public timaPasswordHintIndex:I

.field public timaPasswordIndex:I

.field public timaPwdResetTokenIndex:I

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v3, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    iput p4, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput p5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput p5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput p6, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    iget v0, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iget v0, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iget v0, p1, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v5, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput v2, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    :goto_16
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v2

    goto :goto_12

    :cond_13
    move v0, v2

    goto :goto_13

    :cond_14
    move v0, v2

    goto :goto_14

    :cond_15
    move v0, v2

    goto :goto_15

    :cond_16
    move v1, v2

    goto :goto_16
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFingerCount()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    return v0
.end method

.method public getHandlerApkLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMigratedPersona()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-void
.end method

.method public setAdminUid(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return-void
.end method

.method public setFingerCount(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    return-void
.end method

.method public setHandlerApkLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-void
.end method

.method public setHandlerPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setHandlerServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-void
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    return-void
.end method

.method public setIsFingerReset(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shocutGuideDisplay:Z

    if-eqz v0, :cond_16

    :goto_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v2

    goto :goto_12

    :cond_13
    move v0, v2

    goto :goto_13

    :cond_14
    move v0, v2

    goto :goto_14

    :cond_15
    move v0, v2

    goto :goto_15

    :cond_16
    move v1, v2

    goto :goto_16
.end method
