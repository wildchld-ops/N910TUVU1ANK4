.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_landing_page_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$200(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    return-void
.end method
