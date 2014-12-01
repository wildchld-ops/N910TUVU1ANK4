.class public final enum Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
.super Ljava/lang/Enum;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VersionErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

.field public static final enum DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

.field public static final enum INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

.field public static final enum NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

.field public static final enum SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    const-string v1, "INVALID_VERSION_INFORMATION"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    const-string v1, "SHOOTING_MODE_UPDATE_NEEDED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    const-string v1, "DEVICE_UPDATE_NEEDED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->$VALUES:[Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->$VALUES:[Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    return-object v0
.end method
