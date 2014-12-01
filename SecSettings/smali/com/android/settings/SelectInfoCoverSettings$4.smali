.class Lcom/android/settings/SelectInfoCoverSettings$4;
.super Ljava/lang/Object;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectInfoCoverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectInfoCoverSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SelectInfoCoverSettings$4;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$4;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings$4;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    # getter for: Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/SelectInfoCoverSettings;->access$100(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SelectItemDisplay"

    const-string v2, "AlertDialog/onClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visibility"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "type"

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings$4;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    # getter for: Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/SelectInfoCoverSettings;->access$200(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$4;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
