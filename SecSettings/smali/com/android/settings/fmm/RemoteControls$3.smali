.class Lcom/android/settings/fmm/RemoteControls$3;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$3;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "RemoteControls"

    const-string v1, "showMobileDateChargeEnableDialog disable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
