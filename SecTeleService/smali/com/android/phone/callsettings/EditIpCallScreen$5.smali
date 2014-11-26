.class Lcom/android/phone/callsettings/EditIpCallScreen$5;
.super Ljava/lang/Object;
.source "EditIpCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditIpCallScreen;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditIpCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditIpCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditIpCallScreen$5;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen$5;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/callsettings/EditIpCallScreen;->istoastshowing:Z

    return-void
.end method
