.class Lcom/android/settings/SViewColor2014$4;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor2014;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    iget-object v3, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v3}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v1

    # getter for: Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I
    invoke-static {}, Lcom/android/settings/SViewColor2014;->access$400()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # invokes: Lcom/android/settings/SViewColor2014;->saveWallpaperFile()V
    invoke-static {v1}, Lcom/android/settings/SViewColor2014;->access$500(Lcom/android/settings/SViewColor2014;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I
    invoke-static {v3}, Lcom/android/settings/SViewColor2014;->access$600(Lcom/android/settings/SViewColor2014;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SViewColor2014"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnClickListener sview_color_wallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I
    invoke-static {v3}, Lcom/android/settings/SViewColor2014;->access$300(Lcom/android/settings/SViewColor2014;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    # getter for: Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I
    invoke-static {v3}, Lcom/android/settings/SViewColor2014;->access$600(Lcom/android/settings/SViewColor2014;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z
    invoke-static {v1, v2}, Lcom/android/settings/SViewColor2014;->access$702(Lcom/android/settings/SViewColor2014;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014$4;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
