.class Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;
.super Ljava/lang/Object;
.source "SettingsTransmitMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SettingsTransmitMessageActivity;->onClickedRequestDeliveryReadReportInfo(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SettingsTransmitMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsTransmitMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SettingsTransmitMessageActivity$1;->this$0:Lcom/android/mms/ui/SettingsTransmitMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
