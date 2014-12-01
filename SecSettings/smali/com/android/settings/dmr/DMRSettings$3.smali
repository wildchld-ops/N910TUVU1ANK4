.class Lcom/android/settings/dmr/DMRSettings$3;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dmr/DMRSettings;->requestWifiSettingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMRSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$3;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "Settings"

    const-string v1, "DMR Setting: Wifi AlertDialog Select : Positive"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$3;->this$0:Lcom/android/settings/dmr/DMRSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z
    invoke-static {v0, v1}, Lcom/android/settings/dmr/DMRSettings;->access$202(Lcom/android/settings/dmr/DMRSettings;Z)Z

    return-void
.end method
