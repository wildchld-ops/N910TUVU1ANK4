.class Lcom/android/settings/myplace/MyPlaceProfileSettings$14;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

.field final synthetic val$position:I


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete criteria : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    # invokes: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    return-void
.end method
