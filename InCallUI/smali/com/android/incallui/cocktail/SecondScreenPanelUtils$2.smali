.class final Lcom/android/incallui/cocktail/SecondScreenPanelUtils$2;
.super Ljava/lang/Object;
.source "SecondScreenPanelUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->dismissWaitingCallDialog()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # invokes: Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->internalAnswer()V
    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->access$100()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
