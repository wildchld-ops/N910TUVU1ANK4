.class Lcom/android/settings/dmr/DMRSettings$7;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
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

    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$7;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "Settings"

    const-string v1, "Cancel Clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
