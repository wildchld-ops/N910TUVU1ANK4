.class public Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManageShootingModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;->this$0:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;->this$0:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    # getter for: Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->access$100(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->refreshView()V

    return-void
.end method
