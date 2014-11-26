.class Lcom/android/settings/SViewColor$3;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    iget-object v3, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    # getter for: Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I
    invoke-static {v3}, Lcom/android/settings/SViewColor;->access$300(Lcom/android/settings/SViewColor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    # getter for: Lcom/android/settings/SViewColor;->mIsWallpaper:Z
    invoke-static {v1}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    # getter for: Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I
    invoke-static {v3}, Lcom/android/settings/SViewColor;->access$500(Lcom/android/settings/SViewColor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/SViewColor$3;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
