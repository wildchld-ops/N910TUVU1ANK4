.class Lcom/android/incallui/InCallDUOSUIControl$9;
.super Ljava/lang/Object;
.source "InCallDUOSUIControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallDUOSUIControl;->showDuosAnswerCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallDUOSUIControl;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallDUOSUIControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallDUOSUIControl$9;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl$9;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->dismissControlPopup()V

    return-void
.end method
