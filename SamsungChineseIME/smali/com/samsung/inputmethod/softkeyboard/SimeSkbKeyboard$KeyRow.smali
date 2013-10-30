.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
.super Ljava/lang/Object;
.source "SimeSkbKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyRow"
.end annotation


# static fields
.field static final ALWAYS_SHOW_ROW_ID:I = -0x1

.field static final DEFAULT_ROW_ID:I


# instance fields
.field mBottom:I

.field mBottomF:F

.field mBottomMargin:F

.field mRowId:I

.field mSoftKeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;",
            ">;"
        }
    .end annotation
.end field

.field mSoftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;",
            ">;"
        }
    .end annotation
.end field

.field mTop:I

.field mTopF:F

.field mTopMargin:F

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
