.class public Lcom/android/settings/DateTimeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
    }
.end annotation


# static fields
.field private static dialog_state:Z

.field private static mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;


# instance fields
.field private autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private autoDateTimeLayout:Landroid/widget/LinearLayout;

.field private autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private autoTimezoneLayout:Landroid/widget/LinearLayout;

.field private close_button:Landroid/widget/Button;

.field private datetime:Landroid/widget/TextView;

.field private resources:Landroid/content/res/Resources;

.field private setup_button:Landroid/widget/Button;

.field private timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private timeFormatLayout:Landroid/widget/LinearLayout;

.field private timeformat:Landroid/widget/TextView;

.field private timezone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    sput-object p0, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/settings/DateTimeIntentReceiver;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object p1
.end method

.method private displayDialog(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DateTimeIntentReceiver"

    const-string v1, "displayDialog()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    new-instance v0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;-><init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "TYPE_STATUS_BAR_OVERLAY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/android/settings/DateTimeIntentReceiver;->mDialog:Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DateTimeIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_DATE_TIME_DIALOG is received, dialog_state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/DateTimeIntentReceiver;->dialog_state:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeIntentReceiver;->displayDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
