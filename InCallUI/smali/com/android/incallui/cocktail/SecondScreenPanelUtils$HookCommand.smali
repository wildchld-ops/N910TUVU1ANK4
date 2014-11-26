.class public final enum Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;
.super Ljava/lang/Enum;
.source "SecondScreenPanelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/cocktail/SecondScreenPanelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HookCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum ANSWER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum END:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum MERGE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum MUTE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum NOTIFY_MISSED_CALL:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum PLAY_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum SILENCE_RINGER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum STOP_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum SWAP:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

.field public static final enum TOGGLE_HOLD:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "ANSWER"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->ANSWER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->END:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "SILENCE_RINGER"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->SILENCE_RINGER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "TOGGLE_HOLD"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->TOGGLE_HOLD:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "MERGE"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->MERGE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "SWAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->SWAP:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "MUTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->MUTE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "PLAY_DTMF_TONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->PLAY_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "STOP_DTMF_TONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->STOP_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    new-instance v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const-string v1, "NOTIFY_MISSED_CALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->NOTIFY_MISSED_CALL:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->ANSWER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->END:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->SILENCE_RINGER:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->TOGGLE_HOLD:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->MERGE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->SWAP:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->MUTE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->PLAY_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->STOP_DTMF_TONE:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->NOTIFY_MISSED_CALL:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->$VALUES:[Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;
    .locals 1

    const-class v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;
    .locals 1

    sget-object v0, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->$VALUES:[Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    return-object v0
.end method
