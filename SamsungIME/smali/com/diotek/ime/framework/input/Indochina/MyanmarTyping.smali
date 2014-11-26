.class public Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;
.super Ljava/lang/Object;
.source "MyanmarTyping.java"


# static fields
.field private static final BASIC_CONSONANTS:Ljava/lang/String; = "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

.field private static final COMBINING_MARKS:Ljava/lang/String; = "1036,1037,1038,1064"

.field private static final COMPOUND_VOWEL:Ljava/lang/String; = ""

.field private static final CONSONAL_CAN_COMBINE_WITH103B:Ljava/lang/String; = "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

.field private static final CONSONAL_CAN_COMBINE_WITH103B_TO107E:Ljava/lang/String; = "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

.field private static final DOUBLE_HEIGHT_CONSONANTS:Ljava/lang/String; = "1069,106c,106d,106e,106f,1091,1097,100d"

.field private static final DOUBLE_HEIGHT_CONSONANTS_3_33:Ljava/lang/String; = "1008,100a,100b,100c,100d"

.field private static final DOUBLE_WIDTH_CONSONANTS:Ljava/lang/String; = "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

.field private static final INDEPENDENT_VOWEL:Ljava/lang/String; = "1023,1024,1025,1026,1027,1029,102a"

.field private static final MEDIAL_CONSONANTS:Ljava/lang/String; = "103a,103b,103c,103d"

.field private static final OTHER_CONSONANTS:Ljava/lang/String; = "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

.field private static final SINGLE_WITH_CONSONANTS:Ljava/lang/String; = "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

.field private static final STACKED_CONSONANTS:Ljava/lang/String; = "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

.field private static final VOWEL_DOWN:Ljava/lang/String; = "103c,108a"

.field private static final VOWEL_SIGNS:Ljava/lang/String; = "102c,102b,102d,102e,102f,1030,1031,1032"

.field private static final VOWEL_SIGNS_DOWN:Ljava/lang/String; = "102f,1030,103a,103c,103d,108a,1088"

.field private static final VOWEL_SIGNS_UP:Ljava/lang/String; = "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

.field private static final VOWEL_UP:Ljava/lang/String; = "102d,102e,1064,108b,108c,108d,108e"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p0    # Landroid/view/inputmethod/InputConnection;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/16 v5, 0x1097

    if-eq v0, v5, :cond_0

    const/16 v5, 0x106e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x106f

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1091

    if-ne v0, v5, :cond_3

    :cond_0
    if-eqz p5, :cond_2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_0
    move p1, v0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_3
    const/16 v5, 0x106a

    if-ne v0, v5, :cond_8

    const/16 v5, 0x1005

    if-lt p1, v5, :cond_8

    const/16 v5, 0x1008

    if-gt p1, v5, :cond_8

    if-eqz p5, :cond_4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_2
    int-to-char v5, v0

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 v5, 0x1005

    if-ne p1, v5, :cond_5

    const/16 p1, 0x1065

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    :cond_5
    const/16 v5, 0x1006

    if-ne p1, v5, :cond_6

    const/16 p1, 0x1067

    goto :goto_1

    :cond_6
    const/16 v5, 0x1007

    if-ne p1, v5, :cond_7

    const/16 p1, 0x1068

    goto :goto_1

    :cond_7
    const/16 v5, 0x1008

    if-ne p1, v5, :cond_1

    const/16 p1, 0x1069

    goto :goto_1

    :cond_8
    const/16 v5, 0x108f

    if-eq v0, v5, :cond_9

    const/16 v5, 0x1090

    if-ne v0, v5, :cond_b

    :cond_9
    if-eqz p5, :cond_a

    const/4 v5, 0x1

    if-lt v4, v5, :cond_a

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_3
    int-to-char v5, v0

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_1

    :cond_a
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_3

    :cond_b
    const/16 v5, 0x103b

    if-ne p1, v5, :cond_d

    const/16 v5, 0x1019

    if-ne v1, v5, :cond_d

    if-eqz p5, :cond_c

    const/4 v5, 0x1

    if-lt v4, v5, :cond_c

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_4
    const/16 v5, 0x107f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto :goto_1

    :cond_c
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    :cond_d
    const/16 v5, 0x103b

    if-ne p1, v5, :cond_10

    const/16 v5, 0x1001

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1002

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1015

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1016

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1017

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1019

    if-eq v1, v5, :cond_e

    const/16 v5, 0x1004

    if-ne v1, v5, :cond_10

    :cond_e
    if-eqz p5, :cond_f

    const/4 v5, 0x1

    if-lt v4, v5, :cond_f

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_5
    int-to-char v5, p1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto/16 :goto_1

    :cond_f
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_5

    :cond_10
    const/16 v5, 0x103b

    if-ne p1, v5, :cond_13

    const/16 v5, 0x1000

    if-eq v1, v5, :cond_11

    const/16 v5, 0x1010

    if-ne v1, v5, :cond_13

    :cond_11
    if-eqz p5, :cond_12

    const/4 v5, 0x1

    if-lt v4, v5, :cond_12

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_6
    const/16 v5, 0x107e

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto/16 :goto_1

    :cond_12
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_6

    :cond_13
    const/16 v5, 0x1039

    if-ne p1, v5, :cond_15

    const/16 v5, 0x102b

    if-ne v1, v5, :cond_15

    const/16 v5, 0x105a

    if-ne v0, v5, :cond_15

    if-eqz p5, :cond_14

    const/4 v5, 0x1

    if-lt v4, v5, :cond_14

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_7
    move p1, v0

    goto/16 :goto_1

    :cond_14
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_7

    :cond_15
    const/16 v5, 0x102d

    if-ne p1, v5, :cond_17

    const/16 v5, 0x1015

    if-ne v1, v5, :cond_17

    const v5, 0x2073a

    if-ne v2, v5, :cond_17

    if-eqz p5, :cond_16

    const/4 v5, 0x2

    if-lt v4, v5, :cond_16

    add-int/lit8 v5, v4, -0x2

    invoke-static {v5, v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_8
    const/16 v5, 0x107f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    int-to-char v5, v1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_8

    :cond_17
    if-ne p1, v1, :cond_19

    const/16 v5, 0x101e

    if-ne p1, v5, :cond_19

    if-eqz p5, :cond_18

    const/4 v5, 0x1

    if-lt v4, v5, :cond_18

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_9
    const/16 p1, 0x1086

    goto/16 :goto_1

    :cond_18
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_9

    :cond_19
    const/16 v5, 0x100c

    if-ne p1, v5, :cond_1b

    const/16 v5, 0x100b

    if-ne v1, v5, :cond_1b

    if-eqz p5, :cond_1a

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1a

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_a
    const/16 p1, 0x1092

    goto/16 :goto_1

    :cond_1a
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_a

    :cond_1b
    const/16 v5, 0x103d

    if-ne p1, v5, :cond_1c

    const/16 v5, 0x1004

    if-ne v1, v5, :cond_1c

    const v5, 0x20729

    if-ne v2, v5, :cond_1c

    const/16 p1, 0x1087

    goto/16 :goto_1

    :cond_1c
    const/16 v5, 0x1013

    if-ne p1, v5, :cond_1d

    const/16 v5, 0x1012

    if-ne v1, v5, :cond_1d

    const/16 p1, 0x1076

    goto/16 :goto_1

    :cond_1d
    const/16 v5, 0x1010

    if-lt p1, v5, :cond_1f

    const/16 v5, 0x1013

    if-gt p1, v5, :cond_1f

    const/16 v5, 0x1014

    if-ne v1, v5, :cond_1f

    if-eqz p5, :cond_1e

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1e

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_b
    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v0

    goto/16 :goto_1

    :cond_1e
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_b

    :cond_1f
    if-ne p1, v1, :cond_21

    const/16 v5, 0x1014

    if-ne p1, v5, :cond_21

    if-eqz p5, :cond_20

    const/4 v5, 0x1

    if-lt v4, v5, :cond_20

    add-int/lit8 v5, v4, -0x1

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_c
    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v0

    goto/16 :goto_1

    :cond_20
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_c

    :cond_21
    move p1, v0

    goto/16 :goto_1
.end method

.method private static combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p0    # Landroid/view/inputmethod/InputConnection;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {p1, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    const/16 v6, 0x1014

    if-eq v2, v6, :cond_0

    const/16 v6, 0x1014

    if-ne v3, v6, :cond_5

    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignDown(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1014

    if-ne v2, v6, :cond_3

    if-eqz p5, :cond_2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_0
    const/16 v6, 0x108f

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_3
    const/16 v6, 0x1014

    if-ne v3, v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p5, :cond_4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_2
    const/16 v6, 0x108f

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    :cond_5
    const/16 v6, 0x103b

    if-ne v2, v6, :cond_7

    const/16 v6, 0x101e

    if-ne p1, v6, :cond_7

    if-eqz p5, :cond_6

    const/4 v6, 0x1

    if-lt v5, v6, :cond_6

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_3
    const/16 p1, 0x1029

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_3

    :cond_7
    const/16 v6, 0x1001

    if-eq v2, v6, :cond_8

    const/16 v6, 0x1002

    if-eq v2, v6, :cond_8

    const/16 v6, 0x1004

    if-eq v2, v6, :cond_8

    const/16 v6, 0x1012

    if-eq v2, v6, :cond_8

    const/16 v6, 0x1015

    if-eq v2, v6, :cond_8

    const/16 v6, 0x101d

    if-ne v2, v6, :cond_9

    :cond_8
    const/16 v6, 0x102c

    if-ne p1, v6, :cond_9

    const/16 v6, 0x103b

    if-eq v3, v6, :cond_9

    const/16 p1, 0x102b

    goto :goto_1

    :cond_9
    const/16 v6, 0x102d

    if-ne p1, v6, :cond_b

    const/16 v6, 0x1064

    if-ne v2, v6, :cond_b

    if-eqz p5, :cond_a

    const/4 v6, 0x1

    if-lt v5, v6, :cond_a

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_4
    const/16 p1, 0x108b

    goto :goto_1

    :cond_a
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    :cond_b
    const/16 v6, 0x102e

    if-ne p1, v6, :cond_d

    const/16 v6, 0x1064

    if-ne v2, v6, :cond_d

    if-eqz p5, :cond_c

    const/4 v6, 0x1

    if-lt v5, v6, :cond_c

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_5
    const/16 p1, 0x108c

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_5

    :cond_d
    const/16 v6, 0x1030

    if-eq p1, v6, :cond_e

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_13

    :cond_e
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_f
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_10

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_10
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_11
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_12

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_12
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_13
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_14

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_19

    :cond_14
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_15
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_16

    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_16
    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_17
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_18

    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_18
    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_19
    const/16 v6, 0x1030

    if-eq p1, v6, :cond_1a

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_1f

    :cond_1a
    const/16 v6, 0x103a

    if-eq v2, v6, :cond_1b

    const/16 v6, 0x103a

    if-ne v3, v6, :cond_1f

    :cond_1b
    const/16 v6, 0x103a

    if-ne v2, v6, :cond_1d

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1c

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_1c
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_1d
    const/16 v6, 0x103a

    if-ne v3, v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1e

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_1e
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_1f
    const/16 v6, 0x1030

    if-eq p1, v6, :cond_20

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_25

    :cond_20
    const/16 v6, 0x103b

    if-eq v3, v6, :cond_21

    const/16 v6, 0x107f

    if-ne v4, v6, :cond_25

    :cond_21
    const/16 v6, 0x103b

    if-ne v3, v6, :cond_23

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_22

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_22
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_23
    const/16 v6, 0x107f

    if-ne v4, v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_24

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_24
    const/16 p1, 0x1033

    goto/16 :goto_1

    :cond_25
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_28

    const/16 v6, 0x103d

    if-ne v2, v6, :cond_28

    const/16 v6, 0x1014

    if-eq v3, v6, :cond_26

    const/16 v6, 0x1019

    if-eq v3, v6, :cond_26

    const/16 v6, 0x101b

    if-eq v3, v6, :cond_26

    const/16 v6, 0x101c

    if-ne v3, v6, :cond_28

    :cond_26
    if-eqz p5, :cond_27

    const/4 v6, 0x1

    if-lt v5, v6, :cond_27

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_6
    const/16 p1, 0x1089

    goto/16 :goto_1

    :cond_27
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_6

    :cond_28
    const/16 v6, 0x1036

    if-ne p1, v6, :cond_2a

    const/16 v6, 0x1064

    if-ne v2, v6, :cond_2a

    if-eqz p5, :cond_29

    const/4 v6, 0x1

    if-lt v5, v6, :cond_29

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_7
    const/16 p1, 0x108d

    goto/16 :goto_1

    :cond_29
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_7

    :cond_2a
    const/16 v6, 0x1036

    if-ne p1, v6, :cond_2c

    const/16 v6, 0x102d

    if-ne v2, v6, :cond_2c

    if-eqz p5, :cond_2b

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2b

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_8
    const/16 p1, 0x108e

    goto/16 :goto_1

    :cond_2b
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_8

    :cond_2c
    const/16 v6, 0x1037

    if-ne p1, v6, :cond_2d

    const/16 v6, 0x103d

    if-ne v2, v6, :cond_2d

    const/16 v6, 0x1031

    if-ne v4, v6, :cond_2d

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/16 p1, 0x1095

    goto/16 :goto_1

    :cond_2d
    const/16 v6, 0x1037

    if-ne p1, v6, :cond_31

    const/16 v6, 0x102f

    if-eq v2, v6, :cond_30

    const/16 v6, 0x1030

    if-eq v2, v6, :cond_30

    const/16 v6, 0x1014

    if-eq v2, v6, :cond_30

    const/16 v6, 0x102f

    if-eq v3, v6, :cond_2e

    const/16 v6, 0x1030

    if-eq v3, v6, :cond_2e

    const/16 v6, 0x1014

    if-eq v3, v6, :cond_2e

    const/16 v6, 0x103d

    if-ne v3, v6, :cond_2f

    :cond_2e
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-nez v6, :cond_30

    :cond_2f
    const/16 v6, 0x103d

    if-ne v2, v6, :cond_31

    :cond_30
    const/16 p1, 0x1094

    goto/16 :goto_1

    :cond_31
    const/16 v6, 0x1037

    if-ne p1, v6, :cond_34

    const/16 v6, 0x101b

    if-eq v2, v6, :cond_33

    const/16 v6, 0x1033

    if-eq v2, v6, :cond_33

    const/16 v6, 0x103c

    if-eq v2, v6, :cond_33

    const/16 v6, 0x101b

    if-eq v3, v6, :cond_32

    const/16 v6, 0x1033

    if-eq v3, v6, :cond_32

    const/16 v6, 0x103c

    if-ne v3, v6, :cond_34

    :cond_32
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_33
    const/16 p1, 0x1095

    goto/16 :goto_1

    :cond_34
    const/16 v6, 0x1039

    if-ne p1, v6, :cond_37

    const/16 v6, 0x102b

    if-ne v2, v6, :cond_37

    const/16 v6, 0x1001

    if-eq v3, v6, :cond_35

    const/16 v6, 0x1002

    if-eq v3, v6, :cond_35

    const/16 v6, 0x1004

    if-eq v3, v6, :cond_35

    const/16 v6, 0x1012

    if-eq v3, v6, :cond_35

    const/16 v6, 0x1015

    if-eq v3, v6, :cond_35

    const/16 v6, 0x101d

    if-ne v3, v6, :cond_37

    :cond_35
    if-eqz p5, :cond_36

    const/4 v6, 0x1

    if-lt v5, v6, :cond_36

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_9
    const/16 p1, 0x105a

    goto/16 :goto_1

    :cond_36
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_9

    :cond_37
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x103b

    if-ne v2, v6, :cond_39

    if-eqz p5, :cond_38

    const/4 v6, 0x1

    if-lt v5, v6, :cond_38

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_a
    const/16 v6, 0x107e

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_1

    :cond_38
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_a

    :cond_39
    const/16 v6, 0x102d

    if-eq p1, v6, :cond_3a

    const/16 v6, 0x108b

    if-eq p1, v6, :cond_3a

    const/16 v6, 0x102e

    if-eq p1, v6, :cond_3a

    const/16 v6, 0x108c

    if-eq p1, v6, :cond_3a

    const/16 v6, 0x1064

    if-eq p1, v6, :cond_3a

    const/16 v6, 0x108d

    if-ne p1, v6, :cond_3c

    :cond_3a
    const/16 v6, 0x103b

    if-ne v3, v6, :cond_3c

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    if-eqz p5, :cond_3b

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3b

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_b
    const/16 v6, 0x107f

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3b
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_b

    :cond_3c
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v6, 0x107e

    if-ne v3, v6, :cond_3f

    const/16 v6, 0x102d

    if-eq p1, v6, :cond_3d

    const/16 v6, 0x108b

    if-eq p1, v6, :cond_3d

    const/16 v6, 0x102e

    if-eq p1, v6, :cond_3d

    const/16 v6, 0x108c

    if-eq p1, v6, :cond_3d

    const/16 v6, 0x1064

    if-eq p1, v6, :cond_3d

    const/16 v6, 0x108d

    if-ne p1, v6, :cond_3f

    :cond_3d
    if-eqz p5, :cond_3e

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3e

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_c
    const/16 v6, 0x1080

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3e
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_c

    :cond_3f
    const/16 v6, 0x103c

    if-eq p1, v6, :cond_40

    const/16 v6, 0x108a

    if-ne p1, v6, :cond_42

    :cond_40
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_42

    const/16 v6, 0x103b

    if-ne v3, v6, :cond_42

    if-eqz p5, :cond_41

    const/4 v6, 0x2

    if-lt v5, v6, :cond_41

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_d
    const/16 v6, 0x1081

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_41
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_d

    :cond_42
    const/16 v6, 0x103c

    if-eq p1, v6, :cond_43

    const/16 v6, 0x108a

    if-ne p1, v6, :cond_45

    :cond_43
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_45

    const/16 v6, 0x107f

    if-ne v4, v6, :cond_45

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-eqz v6, :cond_45

    if-eqz p5, :cond_44

    const/4 v6, 0x3

    if-lt v5, v6, :cond_44

    add-int/lit8 v6, v5, -0x3

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_e
    const/16 v6, 0x1083

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_44
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_e

    :cond_45
    const/16 v6, 0x102d

    if-eq p1, v6, :cond_46

    const/16 v6, 0x108b

    if-eq p1, v6, :cond_46

    const/16 v6, 0x102e

    if-eq p1, v6, :cond_46

    const/16 v6, 0x108c

    if-eq p1, v6, :cond_46

    const/16 v6, 0x1064

    if-eq p1, v6, :cond_46

    const/16 v6, 0x108d

    if-ne p1, v6, :cond_48

    :cond_46
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_48

    const/16 v6, 0x1082

    if-ne v4, v6, :cond_48

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_48

    if-eqz p5, :cond_47

    const/4 v6, 0x3

    if-lt v5, v6, :cond_47

    add-int/lit8 v6, v5, -0x3

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_f
    const/16 v6, 0x1084

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_47
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_f

    :cond_48
    const/16 v6, 0x102d

    if-eq p1, v6, :cond_49

    const/16 v6, 0x108b

    if-eq p1, v6, :cond_49

    const/16 v6, 0x102e

    if-eq p1, v6, :cond_49

    const/16 v6, 0x108c

    if-eq p1, v6, :cond_49

    const/16 v6, 0x1064

    if-eq p1, v6, :cond_49

    const/16 v6, 0x108d

    if-ne p1, v6, :cond_4b

    :cond_49
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v6, 0x1081

    if-ne v4, v6, :cond_4b

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    if-eqz p5, :cond_4a

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4a

    add-int/lit8 v6, v5, -0x3

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_10
    const/16 v6, 0x1083

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4a
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_10

    :cond_4b
    const/16 v6, 0x103c

    if-eq p1, v6, :cond_4c

    const/16 v6, 0x108a

    if-ne p1, v6, :cond_52

    :cond_4c
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v6, 0x107e

    if-eq v3, v6, :cond_4e

    :cond_4d
    const/16 v6, 0x1029

    if-ne v2, v6, :cond_52

    :cond_4e
    const/16 v6, 0x1029

    if-eq v2, v6, :cond_50

    if-eqz p5, :cond_4f

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4f

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_11
    const/16 v6, 0x1082

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4f
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_11

    :cond_50
    if-eqz p5, :cond_51

    const/4 v6, 0x1

    if-lt v5, v6, :cond_51

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_12
    const/16 v6, 0x1082

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 v6, 0x101e

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_1

    :cond_51
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_12

    :cond_52
    const/16 v6, 0x103c

    if-ne p1, v6, :cond_54

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_54

    const/16 v6, 0x1080

    if-ne v4, v6, :cond_54

    if-eqz p5, :cond_53

    const/4 v6, 0x3

    if-lt v5, v6, :cond_53

    add-int/lit8 v6, v5, -0x3

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_13
    const/16 v6, 0x1084

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_53
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_13

    :cond_54
    const/16 v6, 0x103d

    if-ne p1, v6, :cond_56

    const/16 v6, 0x100a

    if-eq v2, v6, :cond_55

    const/16 v6, 0x100a

    if-ne v3, v6, :cond_56

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_56

    :cond_55
    const/16 p1, 0x1087

    goto/16 :goto_1

    :cond_56
    const/16 v6, 0x103d

    if-ne p1, v6, :cond_5b

    const/16 v6, 0x1004

    if-eq v2, v6, :cond_57

    const/16 v6, 0x1019

    if-ne v2, v6, :cond_58

    :cond_57
    const/16 v6, 0x103b

    if-eq v3, v6, :cond_5a

    :cond_58
    const/16 v6, 0x1004

    if-eq v3, v6, :cond_59

    const/16 v6, 0x1019

    if-ne v3, v6, :cond_5b

    :cond_59
    const/16 v6, 0x103b

    if-ne v4, v6, :cond_5b

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_5a
    const/16 p1, 0x1087

    goto/16 :goto_1

    :cond_5b
    const/16 v6, 0x103d

    if-ne p1, v6, :cond_62

    const/16 v6, 0x103c

    if-ne v2, v6, :cond_5c

    const/16 v6, 0x108f

    if-eq v3, v6, :cond_5e

    const/16 v6, 0x1019

    if-eq v3, v6, :cond_5e

    const/16 v6, 0x101b

    if-eq v3, v6, :cond_5e

    const/16 v6, 0x101c

    if-eq v3, v6, :cond_5e

    :cond_5c
    const/16 v6, 0x103c

    if-ne v3, v6, :cond_62

    const/16 v6, 0x108f

    if-eq v4, v6, :cond_5d

    const/16 v6, 0x1019

    if-eq v4, v6, :cond_5d

    const/16 v6, 0x101b

    if-eq v4, v6, :cond_5d

    const/16 v6, 0x101c

    if-ne v4, v6, :cond_62

    :cond_5d
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_62

    :cond_5e
    const/16 v6, 0x103c

    if-ne v2, v6, :cond_60

    if-eqz p5, :cond_5f

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5f

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_14
    const/16 p1, 0x108a

    goto/16 :goto_1

    :cond_5f
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_14

    :cond_60
    const/16 v6, 0x103c

    if-ne v3, v6, :cond_1

    if-eqz p5, :cond_61

    const/4 v6, 0x2

    if-lt v5, v6, :cond_61

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_15
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/16 p1, 0x108a

    goto/16 :goto_1

    :cond_61
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_15

    :cond_62
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_69

    const/16 v6, 0x103d

    if-ne v2, v6, :cond_63

    const/16 v6, 0x108f

    if-eq v3, v6, :cond_65

    const/16 v6, 0x1019

    if-eq v3, v6, :cond_65

    const/16 v6, 0x101b

    if-eq v3, v6, :cond_65

    const/16 v6, 0x101c

    if-eq v3, v6, :cond_65

    :cond_63
    const/16 v6, 0x103d

    if-ne v3, v6, :cond_69

    const/16 v6, 0x108f

    if-eq v4, v6, :cond_64

    const/16 v6, 0x1019

    if-eq v4, v6, :cond_64

    const/16 v6, 0x101b

    if-eq v4, v6, :cond_64

    const/16 v6, 0x101c

    if-ne v4, v6, :cond_69

    :cond_64
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_69

    :cond_65
    const/16 v6, 0x103d

    if-ne v2, v6, :cond_67

    if-eqz p5, :cond_66

    const/4 v6, 0x1

    if-lt v5, v6, :cond_66

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_16
    const/16 p1, 0x1089

    goto/16 :goto_1

    :cond_66
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_16

    :cond_67
    const/16 v6, 0x103d

    if-ne v3, v6, :cond_1

    if-eqz p5, :cond_68

    const/4 v6, 0x2

    if-lt v5, v6, :cond_68

    add-int/lit8 v6, v5, -0x2

    invoke-static {v6, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->delete(II)V

    :goto_17
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1089

    goto/16 :goto_1

    :cond_68
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_17

    :cond_69
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_6a

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_6f

    :cond_6a
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-nez v6, :cond_6c

    :cond_6b
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-eqz v6, :cond_6f

    :cond_6c
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6e

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x1083

    if-ne v6, v7, :cond_1

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_6d

    const/16 p1, 0x1033

    :cond_6d
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_6e
    const-string v1, ""

    goto :goto_18

    :cond_6f
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_70

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_75

    :cond_70
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-nez v6, :cond_72

    :cond_71
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-eqz v6, :cond_75

    :cond_72
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_74

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x1084

    if-ne v6, v7, :cond_1

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_73

    const/16 p1, 0x1033

    :cond_73
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_74
    const-string v1, ""

    goto :goto_19

    :cond_75
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_76

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_78

    :cond_76
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v6, 0x1081

    if-ne v4, v6, :cond_78

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_77

    const/16 p1, 0x1033

    :cond_77
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_78
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_79

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_7b

    :cond_79
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v6, 0x1082

    if-ne v4, v6, :cond_7b

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_7a

    const/16 p1, 0x1033

    :cond_7a
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_7b
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_7c

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_7e

    :cond_7c
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_7e

    const/16 v6, 0x107e

    if-ne v3, v6, :cond_7e

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_7d

    const/16 p1, 0x1033

    :cond_7d
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_7e
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_7f

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_81

    :cond_7f
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-eqz v6, :cond_81

    const/16 v6, 0x1080

    if-ne v4, v6, :cond_81

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_80

    const/16 p1, 0x1033

    :cond_80
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_81
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_82

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_84

    :cond_82
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-eqz v6, :cond_84

    const/16 v6, 0x1082

    if-ne v4, v6, :cond_84

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_83

    const/16 p1, 0x1033

    :cond_83
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_84
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_85

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_87

    :cond_85
    const/16 v6, 0x1029

    if-ne v2, v6, :cond_87

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_86

    const/16 p1, 0x1033

    :cond_86
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_87
    const/16 v6, 0x102f

    if-ne p1, v6, :cond_8a

    const/16 v6, 0x103d

    if-ne v2, v6, :cond_8a

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v6

    if-nez v6, :cond_88

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isOtherConsonal(I)Z

    move-result v6

    if-nez v6, :cond_88

    const/16 v6, 0x108f

    if-ne v3, v6, :cond_8a

    :cond_88
    if-eqz p5, :cond_89

    const/4 v6, 0x1

    if-lt v5, v6, :cond_89

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_1a
    const/16 p1, 0x1088

    goto/16 :goto_1

    :cond_89
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1a

    :cond_8a
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_8b

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_8f

    :cond_8b
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v6

    if-eqz v6, :cond_8c

    const/16 v6, 0x103b

    if-eq v4, v6, :cond_8d

    :cond_8c
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v6

    if-eqz v6, :cond_8f

    const/16 v6, 0x107e

    if-ne v4, v6, :cond_8f

    :cond_8d
    const/16 v6, 0x102f

    if-ne p1, v6, :cond_8e

    const/16 p1, 0x1033

    :cond_8e
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_8f
    const/16 v6, 0x102f

    if-eq p1, v6, :cond_90

    const/16 v6, 0x1030

    if-ne p1, v6, :cond_92

    :cond_90
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_92

    const/16 v6, 0x1029

    if-ne v3, v6, :cond_92

    const/16 v6, 0x102f

    if-ne p1, v6, :cond_91

    const/16 p1, 0x1033

    :cond_91
    const/16 v6, 0x1030

    if-ne p1, v6, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_1

    :cond_92
    const/16 v6, 0x102c

    if-ne p1, v6, :cond_94

    const/16 v6, 0x1001

    if-eq v3, v6, :cond_93

    const/16 v6, 0x1002

    if-eq v3, v6, :cond_93

    const/16 v6, 0x1004

    if-eq v3, v6, :cond_93

    const/16 v6, 0x1012

    if-eq v3, v6, :cond_93

    const/16 v6, 0x1015

    if-eq v3, v6, :cond_93

    const/16 v6, 0x101d

    if-ne v3, v6, :cond_94

    :cond_93
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-eqz v6, :cond_94

    const/16 v6, 0x103b

    if-eq v4, v6, :cond_94

    const/16 p1, 0x102b

    goto/16 :goto_1

    :cond_94
    const/16 v6, 0x1039

    if-ne p1, v6, :cond_97

    const/16 v6, 0x102b

    if-ne v2, v6, :cond_97

    const/16 v6, 0x1001

    if-eq v4, v6, :cond_95

    const/16 v6, 0x1002

    if-eq v4, v6, :cond_95

    const/16 v6, 0x1004

    if-eq v4, v6, :cond_95

    const/16 v6, 0x1012

    if-eq v4, v6, :cond_95

    const/16 v6, 0x1015

    if-eq v4, v6, :cond_95

    const/16 v6, 0x101d

    if-ne v4, v6, :cond_97

    :cond_95
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v6

    if-eqz v6, :cond_97

    if-eqz p5, :cond_96

    const/4 v6, 0x1

    if-lt v5, v6, :cond_96

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_1b
    const/16 p1, 0x105a

    goto/16 :goto_1

    :cond_96
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1b

    :cond_97
    const/16 v6, 0x103d

    if-ne p1, v6, :cond_99

    const/16 v6, 0x103c

    if-ne v2, v6, :cond_99

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v6

    if-eqz v6, :cond_99

    if-eqz p5, :cond_98

    const/4 v6, 0x1

    if-lt v5, v6, :cond_98

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_1c
    const/16 p1, 0x108a

    goto/16 :goto_1

    :cond_98
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1c

    :cond_99
    const/16 v6, 0x1037

    if-ne p1, v6, :cond_9a

    const/16 v6, 0x108a

    if-ne v2, v6, :cond_9a

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/16 p1, 0x1095

    goto/16 :goto_1

    :cond_9a
    const/16 v6, 0x1037

    if-ne p1, v6, :cond_9b

    const/16 v6, 0x1036

    if-ne v2, v6, :cond_9b

    const/16 v6, 0x103a

    if-ne v3, v6, :cond_9b

    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v6

    if-eqz v6, :cond_9b

    const/16 p1, 0x1095

    goto/16 :goto_1

    :cond_9b
    const/16 v6, 0x1013

    if-ne p1, v6, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignDown(I)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_9c
    if-eqz p5, :cond_9d

    const/4 v6, 0x1

    if-lt v5, v6, :cond_9d

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    :goto_1d
    const/16 p1, 0x1076

    goto/16 :goto_1

    :cond_9d
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1d
.end method

.method public static getMyanmarCode(Landroid/view/inputmethod/InputConnection;IZ)I
    .locals 9
    .param p0    # Landroid/view/inputmethod/InputConnection;
    .param p1    # I
    .param p2    # Z

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-interface {p0, v5, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {p0, v7, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_2

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {p0, v8, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->adjustZawgyiPosition(II)I

    move-result v6

    const/16 v0, 0x107d

    if-ne v6, v0, :cond_4

    invoke-interface {p0, v5, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    int-to-char v0, v6

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    :goto_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    :cond_1
    :goto_3
    return p1

    :cond_2
    const-string v3, ""

    goto :goto_0

    :cond_3
    const-string v4, ""

    goto :goto_1

    :cond_4
    move p1, v6

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_3
.end method

.method private static isBasicConsonal(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103B(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103BTo107E(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1069,106c,106d,106e,106f,1091,1097,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant_3_33(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1008,100a,100b,100c,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleWidthConsonant(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isOtherConsonal(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSingleWithConsonant(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isStackedConsonants(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelDown(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "103c,108a"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignDown(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102f,1030,103a,103c,103d,108a,1088"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignsUp(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelUp(I)Z
    .locals 3
    .param p0    # I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102d,102e,1064,108b,108c,108d,108e"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
