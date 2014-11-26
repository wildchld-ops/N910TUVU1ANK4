.class public Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ColorBlindMultiUserReceiver.java"


# instance fields
.field private final COLORBLIND_USER_CHANGED:Ljava/lang/String;

.field public final CVD_DEUTERAN:I

.field public final CVD_NORMAL:I

.field public final CVD_PROTAN:I

.field public final CVD_TRITAN:I

.field private final EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field integerArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ColorBlindMultiUserReceiver"

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->TAG:Ljava/lang/String;

    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    const-string v0, "com.android.settings.colorblind.ColorBlindMultiUserReceiver"

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->COLORBLIND_USER_CHANGED:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_PROTAN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_DEUTERAN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_TRITAN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->CVD_NORMAL:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v3, "ColorBlindMultiUserReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorBlindMultiUserReceiver - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v14, 0x0

    const-string v3, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "reason"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    :cond_0
    const-string v3, "com.android.settings.colorblind.ColorBlindMultiUserReceiver"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    if-ne v14, v3, :cond_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blackgrey_powersaving_mode"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v11, 0x1

    :goto_0
    if-nez v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind_test"

    const/4 v5, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_contrast"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    const/4 v3, 0x1

    if-ne v15, v3, :cond_5

    const/4 v3, 0x1

    if-ne v13, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind_cvdtype"

    const/4 v5, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind_cvdseverity"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind_user_parameter"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    new-instance v1, Ldmc/cvd/cvdcalculator/CVDCalculator;

    invoke-direct {v1}, Ldmc/cvd/cvdcalculator/CVDCalculator;-><init>()V

    float-to-double v3, v7

    float-to-double v5, v8

    invoke-virtual/range {v1 .. v6}, Ldmc/cvd/cvdcalculator/CVDCalculator;->getRGBCMY(IDD)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->integerArray:[I

    invoke-interface {v3, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/colorblind/ColorBlindMultiUserReceiver;->iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
