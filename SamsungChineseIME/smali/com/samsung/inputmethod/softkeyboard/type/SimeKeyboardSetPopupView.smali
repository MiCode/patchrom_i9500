.class public Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;
.super Landroid/widget/RelativeLayout;
.source "SimeKeyboardSetPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLOAT_WINDOW_RATE:F = 0.6f

.field private static final MARGIN_RATE:F = 0.15f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field private mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private adjustTableRowMargins(Landroid/widget/TableRow;)V
    .locals 4
    .parameter "row"

    .prologue
    const v2, 0x3f19999a

    .line 155
    if-nez p1, :cond_0

    .line 156
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustTableRowMargins() row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout$LayoutParams;

    .line 162
    .local v0, params:Landroid/widget/TableLayout$LayoutParams;
    iget v1, v0, Landroid/widget/TableLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableLayout$LayoutParams;->leftMargin:I

    .line 163
    iget v1, v0, Landroid/widget/TableLayout$LayoutParams;->rightMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableLayout$LayoutParams;->rightMargin:I

    .line 164
    iget v1, v0, Landroid/widget/TableLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableLayout$LayoutParams;->topMargin:I

    .line 165
    iget v1, v0, Landroid/widget/TableLayout$LayoutParams;->bottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableLayout$LayoutParams;->bottomMargin:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private buildTable(Landroid/widget/TableLayout;)V
    .locals 10
    .parameter "table"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 177
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildTable() table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, typeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v3, 0x7f0c0034

    invoke-virtual {p1, v3}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 185
    .local v0, rowOne:Landroid/widget/TableRow;
    const v3, 0x7f0c0035

    invoke-virtual {p1, v3}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 188
    .local v1, rowTwo:Landroid/widget/TableRow;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 189
    :cond_2
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildView() rowOne: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rowTwo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->adjustTableRowMargins(Landroid/widget/TableRow;)V

    .line 195
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->adjustTableRowMargins(Landroid/widget/TableRow;)V

    .line 198
    :cond_4
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_8

    .line 199
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    if-eqz v3, :cond_0

    .line 200
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 209
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 213
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 218
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 219
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 238
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 246
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 255
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 259
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 260
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 270
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    if-eqz v3, :cond_0

    .line 271
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 274
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 278
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 283
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 287
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 288
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 294
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 298
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_0

    .line 300
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 305
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 312
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 316
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_0

    .line 318
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    .line 322
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private buildTableRow(Landroid/widget/TableRow;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "tableTow"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableRow;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, typeIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v3, :cond_2

    .line 338
    :cond_0
    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildTableRow() Null Pointer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    return-void

    .line 343
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-direct {v0, v4, v6, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 346
    .local v0, btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v0           #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-direct {v0, v4, v7, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 352
    .restart local v0       #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v0           #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 356
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-direct {v0, v4, v8, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 358
    .restart local v0       #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v0           #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 362
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-direct {v0, v4, v9, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 364
    .restart local v0       #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v0           #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 368
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-direct {v0, v4, v10, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 370
    .restart local v0       #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v0           #btn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    .line 375
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    .line 378
    .local v2, typeBtn:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-virtual {p1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 383
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 384
    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->highLight()V

    .line 387
    :cond_9
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 388
    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->shrink()V

    goto :goto_0
.end method

.method private getTable()Landroid/widget/TableLayout;
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    return-object v0
.end method

.method private isActive(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 438
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v1, :cond_2

    .line 439
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActive() view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInputModeSwitcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    :goto_0
    return v0

    .line 444
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getKeyboardTypeId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 445
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNum34Keyboard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFloating()Z
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMargins(Landroid/widget/TableLayout;)V
    .locals 4
    .parameter "table"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMargins() table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 139
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustPointers(I)V
    .locals 5
    .parameter "paddingLeft"

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v2, :cond_1

    .line 399
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    const-string v3, "setVisibilityOfPointers() mInputModeSwitcher is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, up:Landroid/view/View;
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, down:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getPaddingLeft()I

    move-result v3

    sub-int p1, v2, v3

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v2

    if-nez v2, :cond_4

    .line 414
    if-eqz v1, :cond_3

    .line 415
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_3
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {v0, p1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 422
    :cond_4
    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1, p1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public build(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;)V
    .locals 5
    .parameter "ime"
    .parameter "popup"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build() ime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", popup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    .line 68
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 69
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 71
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v2, :cond_3

    .line 72
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build() mInputModeSwitcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getTable()Landroid/widget/TableLayout;

    move-result-object v1

    .line 78
    .local v1, table:Landroid/widget/TableLayout;
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isFloating()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->setMargins(Landroid/widget/TableLayout;)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->UNKNOWN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    .line 85
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    .line 114
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->UNKNOWN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    if-ne v2, v3, :cond_f

    .line 115
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 89
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 91
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 92
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 93
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 94
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 95
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNum34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, lang:Ljava/lang/String;
    const-string v2, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 98
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 99
    :cond_b
    const-string v2, "zh_HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 100
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto :goto_1

    .line 101
    :cond_c
    const-string v2, "zh_TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 102
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto/16 :goto_1

    .line 103
    :cond_d
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 104
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto/16 :goto_1

    .line 105
    :cond_e
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mLanguage:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    goto/16 :goto_1

    .line 119
    .end local v0           #lang:Ljava/lang/String;
    :cond_f
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->buildTable(Landroid/widget/TableLayout;)V

    .line 121
    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    if-nez v1, :cond_2

    .line 457
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInputModeSwitcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPopupWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 475
    .local v0, newKeyboardTypeId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchKeyboard(I)V

    .line 477
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 478
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 479
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 505
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->getTable()Landroid/widget/TableLayout;

    move-result-object v0

    .line 506
    .local v0, table:Landroid/widget/TableLayout;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 512
    .local v1, x:I
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getLeft()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getRight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupView;->mPopupWindow:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
