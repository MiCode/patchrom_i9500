.class public Lcom/android/server/toolkit/TabWidget$TabSpec;
.super Ljava/lang/Object;
.source "TabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/toolkit/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private final BLUE:I

.field private final COLORNUM:I

.field private final GREEN:I

.field private final ORANGE:I

.field private final RED:I

.field private final YELLOW:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mIntent:Landroid/content/Intent;

.field private mTabHidden:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private mbUpdate:Z

.field final synthetic this$0:Lcom/android/server/toolkit/TabWidget;


# direct methods
.method private constructor <init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "index"
    .parameter "icon"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    .line 188
    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->YELLOW:I

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->BLUE:I

    .line 190
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->RED:I

    .line 191
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->ORANGE:I

    .line 192
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->GREEN:I

    .line 193
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->COLORNUM:I

    .line 262
    iput p2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    .line 263
    iput-object p3, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 264
    iput-object p4, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    .line 265
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setup()V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/server/toolkit/TabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/toolkit/TabWidget$TabSpec;-><init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/toolkit/TabWidget$TabSpec;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    rem-int/lit8 v0, v0, 0x5

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    .line 292
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080808

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080809

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080811

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 287
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080814

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080815

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTabHidden()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    iget-boolean v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    if-nez v2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mView:Landroid/view/View;

    .line 232
    :goto_0
    return-object v0

    .line 201
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, framelayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mView:Landroid/view/View;

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 212
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 214
    new-instance v2, Lcom/android/server/toolkit/TabWidget$TabSpec$1;

    invoke-direct {v2, p0}, Lcom/android/server/toolkit/TabWidget$TabSpec$1;-><init>(Lcom/android/server/toolkit/TabWidget$TabSpec;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 1
    .parameter "focus"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 239
    :cond_0
    return-void
.end method
