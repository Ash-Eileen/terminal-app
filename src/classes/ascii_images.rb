# This module contains all of the ASCII images utilised through the hangman application.
module Images
  # Displays the Hangman logo to screen with the selected colours.
  def self.title
    puts '        ██╗  ██╗ █████╗ ███╗   ██╗ ██████╗ ███╗   ███╗ █████╗ ███╗   ██╗'.colorize(:light_green)
    puts '        ██║  ██║██╔══██╗████╗  ██║██╔════╝ ████╗ ████║██╔══██╗████╗  ██║'.colorize(:light_red)
    puts '        ███████║███████║██╔██╗ ██║██║  ███╗██╔████╔██║███████║██╔██╗ ██║'.colorize(:cyan)
    puts '        ██╔══██║██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║'.colorize(:light_magenta)
    puts '        ██║  ██║██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║'.colorize(:light_blue)
    puts '        ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝'.colorize(:light_yellow)
  end

  # Holds the image of the cat displayed while user guesses the word.
  def self.small_cat
    "\n    |\\      _,,,---,,_
    /,`.-'`'    -.  ;-;;,_
   |,4-  ) )-,_..;\\ (  `'-'
  '---''(_/--'  `-' \_)"
  end

  # Holds the image of the cat displayed in the menu screen and all instruction screens.
  def self.menu_cat
    "\n  _
  \\`*-.
   )  _`-.
  .  : `. .
  : _   '  \\
  ; *` _.   `*-._
  `-.-'          `-.
    ;       `       `.
    :.       .        \\
    . \\  .   :   .-'   .
    '  `+.;  ;  '      :
    :  '  |    ;       ;-.
      ; '   : :`-:     _.`* ;
   .*' /  .*' ; .*`- +'  `*'
  `*-*   `*-*  `*-*'\n"
  end

  # Holds the image of the cat displayed in the game won screen.
  def self.game_won_cat
    '                 .............                .""".             .""".
         ..."""""             """""...       $   . ".         ." .   $
     ..""        .   .   .   .   .    ..    $   $$$. ". ... ." .$$$   $
   ."    . " . " . " . " . " . " . " .  "" ."  $$$"""  "   "  """$$$  ".
 ."      . " . " . " . " . " . " . " .     $  "                    "   $
 ."   . " . " . "           "   " . " . "  ."      ...          ...     ".
 ."    . " . "    .."""""""""...     " . "  $     .$"              "$.    $
 ."     . " . " .""     .   .    ""..   . " $ ".      .""$     .""$      ." $
 ."    " . " .       . " . " . " .    $    " $ "      "  $$    "  $$       " $
 $     " . " . " . " . " . " . " . "   $     $             $$.$$             $
 $     " . " . " . " . " . " . " . " .  $  " $  " .        $$$$$        . "  $
 $     " . " . " . " . " . " . " . " .  $    $      "  ..   "$"   ..  "      $
 ".    " . " . " . " . " . " . " . "   ."  "  $  . . . $  . .". .  $ . . .  $
 $    " . " . " . " . " . " . " . "  ."   "            ".."   ".."
 $     . " . " . " . " . " . "   .."   . " . "..    "             "    .."
 ".      " . " . " . " . " .  .""    " . " .    """$...         ...$"""
 ". "..     " . " . " . " .  "........  "    .....  ."""....."""
  ". ."$".....                       $..."$"$"."   $".$"... `":....
    "".."    $"$"$"$"""$........$"$"$"  ."."."  ...""      ."".    `"".
        """.$.$." ."  ."."."    ."."." $.$.$"""".......  ". ". $ ". ". $
               """.$.$.$.$.....$.$.""""               ""..$..$."..$..$."'
  end

  # Holds the image of the cat displayed in the game lost screen.
  def self.game_lost_cat
    "\n         '.-----/`.
         /       '/
         __'`__ .''-.
         \\o) o/      \\
         (`Y   .)     \\
           `--|__7     \\
             /         |
        __  /         /
        \\ )  \\        //
        \\ \\--X   Y  //
       (-`.`--_.-' /_)
           `-.__.-'\n"
  end
end
