.class Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "KeyguardTouchDelegate"

    const-string v1, "Connected to keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v1

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardTouchDelegate"

    const-string v1, "Disconnected from keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$102(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    return-void
.end method
