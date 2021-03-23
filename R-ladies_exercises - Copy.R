# Define file path as a variable if the script and dataset are not in the same directory 

file_path = ""

# load _tidyverse_
library(tidyverse)

# Import penguin data set
penguin_data = read_csv(str_c(file_path, "penguins_data.csv"))


# ------- Exercise 1 ---------
# 1. Run slice_tail and slice_sample - same syntax as slice_head from the slides
# Choose n number by yourself. See how the slice_sample gives different results every time.
# What's the name of the island from the last row? 

...(...)
...(...)


#2.  Run glimpse() and this time focus on the variable types

glimpse (...)

# Which columns have the right type and what needs to be converted? To what?
# Check out the columns called date and year. Do we need both? 



#---------- Exercise 2--------------

# 3. Re-load the file by running read_csv, this time specify column types 
# we need to coerce island and sex columns into factors and skip the date column like in the slides.

penguin_data02 = read_csv(str_c(file_path, "dataset/penguins_data.csv", 
                                col_types = cols(species = col_factor(c("Adelie",  "Gentoo",  "Chinstrap")),
                                                 # second column
                                                 ...
                                                 # third column
                                                 ...
                                                 # skip the date column while reading the file
                                                 ... ))
                          
#4. display data structure with str(..., give.attr = FALSE) and check the conversion

...()
                          
                          
                          
# --------- Exercise 3 ------------------
                         
#5. use summary() with %>% operator with penguin_data02 
                    
... %>% ... 
                          
                          
# 6.Reshape penguin data set into tidy data - convert it into wider format like shown in the slides 
                          
# 7. save the output as penguin_df_wide
                          
penguin_df_wide =  penguin_data02 %>%
                   ...(names_from = ...,
                       ... = values)
                          
#8. print the first or last 10 rows and pick one of the methods to explore the data set, for instance
 # glimpse, str, dim or summary 
 
# --your code here-- 
                          
                          

 # --------- Exercise 4 ------------------
                          

##SELECT()
                          
 # 1. Select 1st 4 rows from the data set
df1 = penguin_df_wide %>% ...                  
df1

#2. delete the last row using select
df2 = d1 %>% ...
df2

#3. Pick 3 columns and rename using select()
penguin_df_wide %>% 
  select(...)
#4.  Now do the same as above but using rename()
penguin_df_wide %>%
  ...(...)

#What's the difference ?


##---BONUS EXERCISES ---

#5. Select only the columns that end with "g" and contain word "length"
penguin_df_wide %>% ...
                          

#6. 
                         
penguin_df_wide %>%
# rename id to individual_id, year - date and island - location  
rename(...) %>%
# Rearrange columns so that sex and id are the 1st two columns followed by the rest 
# Which one is the correct name to use "id" or "individual_id"? 
select(...) %>%
 # drop missing values
...() %>%
# print the summary of the resulted data set
...()
                          
#7. Relocate id to be the first column  
                          
penguin_df_wide %>% ... (...) %>% 
# print random 5 rows
...(...)
                          
 #8. select only the categorical columns (is.factor)
penguin_df_wide %>% 
  ...(...(...) )
                          
                          
# ------------- Exercise 5 ------------------
#MUTATE ()

 #1. Use mutate() and calculate the bill depth to length ratio
penguin_df_wide %>% 
...(bill_depth_length_ratio = ...)

 #2. Now write the same code using transmute() instead 
# --your code here-- 
# Look at the difference

##---BONUS EXERCISES ---
                          
 #3. 
 penguin_df_wide %>%
 # select every column that contains "mm"in name
 ...(...(...)) %>%
# remove missing values
...() %>%
# round every value in these columns 
...(... (...(), round ) )
 
                          
 #4. create a new column to categorize penguins based on their flipper length - 
# equal or longer than median - long_flipper, otherwise - short_flipper
                          
#median_flipper_length = 197mm
 median_flipper_length = median(penguin_df_wide$flipper_length_mm, na.rm = T)
 penguin_df_wide %>%
# remove missing values
 ...() %>%
#create a new column   
...(flippers = ...(flipper_length_mm  ..., "...", "...")) %>%
slice_sample(n = 10)
                          
                          
# --------- 6 ---------
 #1. Filter only the rows corresponding to year 2009 for female penguins only and sort the rows in descending order of flipper_length
penguin_df_wide %>%
...(...) %>%
   arrange(desc(...))
 
                          
                          #2.
                          # Calculate the maximum body mass in kg of male penguins from the Biscoe island (you may use transmute())
                          penguin_df_wide %>%
                            #filter the rows for male penguins from Biscoe
                            ...( ...) %>%
                            # calculate body mass in kg
                            ...(...) %>%
                            # maximum value
                            ...(...)
                          
                         
                          