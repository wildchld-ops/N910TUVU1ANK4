.class Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$2;
.super Ljava/lang/Object;
.source "PremiumWatchEditSignature.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;


# direct methods
.method constructor <init>(Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEditSignature$2;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEditSignature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
