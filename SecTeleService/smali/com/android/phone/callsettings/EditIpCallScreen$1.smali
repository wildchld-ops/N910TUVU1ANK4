.class Lcom/android/phone/callsettings/EditIpCallScreen$1;
.super Ljava/lang/Object;
.source "EditIpCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditIpCallScreen;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/EditIpCallScreen$1;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditIpCallScreen$1;->this$0:Lcom/android/phone/callsettings/EditIpCallScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditIpCallScreen;->softkeyRightRun(Landroid/view/View;)V

    return-void
.end method
