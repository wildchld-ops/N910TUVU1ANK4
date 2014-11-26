.class public Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/pdg/PdgStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyData"
.end annotation


# static fields
.field public static final CONTACTS:I = 0x0

.field public static final LOCATION:I = 0x1

.field public static final UIM:I = 0x2


# instance fields
.field private accessTime:J

.field private authState:I

.field private packageName:Ljava/lang/String;

.field private settingState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->settingState:I

    iput v1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->authState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # J

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->settingState:I

    iput v1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->authState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    iput-object p1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->settingState:I

    iput p3, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->authState:I

    iput-wide p4, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    return-wide v0
.end method

.method public final getAuthState()I
    .locals 1

    iget v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->authState:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingState()I
    .locals 1

    iget v0, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->settingState:I

    return v0
.end method

.method public final setAccessTime(J)V
    .locals 0
    .param p1    # J

    iput-wide p1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->accessTime:J

    return-void
.end method

.method public final setAuthState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->authState:I

    return-void
.end method

.method public final setSettingState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->settingState:I

    return-void
.end method
