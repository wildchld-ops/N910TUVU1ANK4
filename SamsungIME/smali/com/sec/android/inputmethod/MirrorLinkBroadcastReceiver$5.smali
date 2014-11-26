.class Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;
.super Lcom/mirrorlink/android/commonapi/ICertificationListener$Stub;
.source "MirrorLinkBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$5;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/ICertificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCertificationStatusChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
