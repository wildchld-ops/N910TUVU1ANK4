.class Lcom/android/incallui/vt/InPSVTCallMenu$1;
.super Ljava/lang/Object;
.source "InPSVTCallMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/vt/InPSVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/InPSVTCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/InPSVTCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/InPSVTCallMenu$1;->this$0:Lcom/android/incallui/vt/InPSVTCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->playCameraSound(I)V

    return-void
.end method
