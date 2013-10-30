.class public Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;
.super Landroid/app/Activity;
.source "SimeSelfDefDialog.java"


# static fields
.field private static final DIALOG_STRING_EMPTY:I = 0x1

.field private static final DIALOG_STRING_EXIST:I = 0x2

.field private static final DIALOG_TRACK_EMPTY:I = 0x0

.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_EDIT:I = 0x1

.field private static instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

.field private static mDefaultDes:Ljava/lang/String;

.field private static mViewType:I

.field private static parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;


# instance fields
.field private arSID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clearButtonLeft:Landroid/widget/Button;

.field private mCurOrderIndex:I

.field private mOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerItem:[Ljava/lang/Object;

.field private sOrder:Landroid/widget/Spinner;

.field private saveButton:Landroid/widget/Button;

.field private str:Landroid/widget/EditText;

.field private textContent:Landroid/widget/TextView;

.field private touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    return-object v0
.end method

.method public static setDes(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 267
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public static setParent(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 238
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    .line 239
    return-void
.end method

.method public static setViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 271
    sput p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    .line 272
    return-void
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPoint([I)I
    .locals 3
    .parameter "point"

    .prologue
    .line 243
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->getPoint()Ljava/util/Vector;

    move-result-object v0

    .line 244
    .local v0, data:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mViewType:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setContentView(I)V

    .line 87
    const v5, 0x7f0c0021

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    .line 88
    const v5, 0x7f0c0023

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    .line 89
    const v5, 0x7f0c0022

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    .line 90
    const v5, 0x7f0c0024

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    .line 92
    const v5, 0x7f0c0025

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->clearButtonLeft:Landroid/widget/Button;

    .line 94
    const v5, 0x7f0c0026

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    .line 96
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_0

    .line 100
    const-string v5, ""

    sput-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    const v6, 0x7f0b0078

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 106
    :goto_0
    sget v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 107
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    const v6, 0x7f0b007b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 113
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    const v6, 0x7f0b0079

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 116
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 117
    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResValue:[I

    aget v5, v5, v3

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_4

    .line 123
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v5, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->arSID:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->mOrderResKey:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 135
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getViewType()I

    move-result v5

    if-nez v5, :cond_8

    .line 136
    iput v7, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    .line 141
    :goto_4
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mSpinnerItem:[Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mSpinnerItem:[Ljava/lang/Object;

    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Object;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    const v6, 0x7f0b0061

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    if-le v5, v6, :cond_7

    .line 148
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 152
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Object;>;"
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :goto_5
    sput-object p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    .line 205
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->clearButtonLeft:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void

    .line 138
    .restart local v1       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mOrderList:Ljava/util/ArrayList;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->parent:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mCurOrderIndex:I

    goto :goto_4

    .line 170
    .end local v1           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->textContent:Landroid/widget/TextView;

    const v6, 0x7f0b005c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 173
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;

    sget-object v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->mDefaultDes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->sOrder:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 176
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->saveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b002c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 218
    const v2, 0x7f0b004a

    new-instance v3, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$4;-><init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 233
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 234
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1

    .line 224
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 227
    :pswitch_1
    const v2, 0x7f0b00f9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 230
    :pswitch_2
    const v2, 0x7f0b00fa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
