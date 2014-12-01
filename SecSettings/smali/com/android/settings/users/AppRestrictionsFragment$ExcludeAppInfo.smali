.class Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExcludeAppInfo"
.end annotation


# instance fields
.field private activityName:Ljava/lang/CharSequence;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->activityName:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->activityName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": activityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
