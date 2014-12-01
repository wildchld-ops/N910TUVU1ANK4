.class public Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
.super Ljava/lang/Object;
.source "RcsSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/settings/RcsSettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicatedClient"
.end annotation


# instance fields
.field public actionForIntent:Ljava/lang/String;

.field public activated:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->activated:Z

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->actionForIntent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionForIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->actionForIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->activated:Z

    return v0
.end method

.method public setActionForIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->actionForIntent:Ljava/lang/String;

    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->activated:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;->packageName:Ljava/lang/String;

    return-void
.end method
